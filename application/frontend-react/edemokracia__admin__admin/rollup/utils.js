import { readFileSync } from 'node:fs';
import { normalize } from 'node:path';

function parseDependencyJSON(depName) {
    const from = normalize(`./node_modules/${depName}/package.json`);
    return JSON.parse(readFileSync(from, { encoding:'utf8', flag:'r' }).toString());
}

export function npmExternalToCopy(depName, suffix, skipFolder = false) {
    return {
        src: `node_modules/${depName}` + (suffix || '') + (!skipFolder ? '/*' : ''),
        dest: `dist/externals/${depName}@${parseDependencyJSON(depName).version}` + (!skipFolder ? (suffix || '') : ''),
    };
}

export function npmExternalsToCopy(externals) {
    return externals.map(([depName, suffix, skipFolder]) => npmExternalToCopy(depName, suffix, skipFolder || false));
}