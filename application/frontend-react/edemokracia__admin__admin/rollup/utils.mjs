import {readFileSync, readdirSync} from 'node:fs';
import {normalize, join} from 'node:path';

const dependencyCache = {};

function parseDependencyJSON(depName) {
    if (Object.keys(dependencyCache).includes(depName)) {
        return dependencyCache[depName];
    }
    const from = normalize(`./node_modules/${depName}/package.json`);
    const newDep = JSON.parse(readFileSync(from, {encoding: 'utf8', flag: 'r'}).toString());

    dependencyCache[depName] = newDep;

    return newDep;
}

export function loadInventory() {
    const inventory = JSON.parse(readFileSync('inventory.json', {encoding: 'utf8', flag: 'r'}).toString());
    const externals = readdirSync(normalize('externals'));

    for (const packageName in inventory) {
        for (const fileName in inventory[packageName]) {
            const f = inventory[packageName][fileName];
            if (f.tags.includes('npm')) {
                f.version = parseDependencyJSON(packageName).version;
            } else if (f.tags.includes('external')) {
                let folder;
                if (!packageName.includes('/')) {
                    folder = externals.find(e => e.startsWith(packageName + '@'));
                } else {
                    const lead = packageName.substring(0, packageName.lastIndexOf('/'));
                    const trail = packageName.split('/').pop();
                    const leadPackages = readdirSync(normalize(join('externals', ...lead.split('/'))));
                    folder = leadPackages.find(e => e.startsWith(trail + '@'));
                }
                if (folder) {
                    f.version = folder.split('@').pop();
                }
            }
        }
    }

    return inventory;
}

export function createImportMap(inventory) {
    const importMap = {};

    for (const packageName in inventory) {
        for (const fileName in inventory[packageName]) {
            const f = inventory[packageName][fileName];
            if (f.tags.includes('importMap')) {
                importMap[f.exports] = `./externals/` + packageName + '@' + f.version + '/' + fileName;
            }
        }
    }

    return importMap;
}

export function copyTasks(inventory, prefix = 'dist/externals/') {
    const tasks = [];

    for (const packageName in inventory) {
        for (const fileName in inventory[packageName]) {
            const f = inventory[packageName][fileName];
            const targetSuffix = fileName.includes('/') ? '/' + fileName.substring(0, fileName.lastIndexOf('/')) : '';
            if (f.tags.includes('npm')) {
                tasks.push({
                    src: `node_modules/${packageName}/${fileName}`,
                    dest: `${prefix}${packageName}@${f.version}${targetSuffix}`,
                });
            }
            if (f.tags.includes('external')) {
                tasks.push({
                    src: `externals/` + packageName + '@' + f.version + '/' + fileName,
                    dest: `${prefix}${packageName}@${f.version}${targetSuffix}`,
                });
            }
        }
    }

    return tasks;
}

export function getCSSLinks(inventory, prefix = 'dist/externals/') {
    const files = [];

    for (const packageName in inventory) {
        for (const fileName in inventory[packageName]) {
            const f = inventory[packageName][fileName];
            if (f.tags.includes('css')) {
                files.push(`./externals/` + packageName + '@' + f.version + '/' + fileName);
            }
        }
    }

    return files;
}

export function getScriptLinks(inventory, prefix = 'dist/externals/') {
    const files = [];

    for (const packageName in inventory) {
        for (const fileName in inventory[packageName]) {
            const f = inventory[packageName][fileName];
            if (f.tags.includes('script')) {
                files.push(`./externals/` + packageName + '@' + f.version + '/' + fileName);
            }
        }
    }

    return files;
}
