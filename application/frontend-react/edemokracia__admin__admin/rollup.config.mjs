import * as dotenv from 'dotenv';
import replace from '@rollup/plugin-replace';
import html from '@rollup/plugin-html';
import clear from 'rollup-plugin-clear';
import copy from 'rollup-plugin-copy';
import esbuild from 'rollup-plugin-esbuild';
import { copyTasks, loadInventory } from './rollup/utils.mjs';
import { template } from './rollup/html-template.mjs';

dotenv.config();

const ENV = process.env.NODE_ENV;
const API_DEFAULT_BASE_URL = process.env.API_DEFAULT_BASE_URL;
const FILE_DEFAULT_BASE_URL = process.env.FILE_DEFAULT_BASE_URL;
const API_RELATIVE_PATH = process.env.API_RELATIVE_PATH;

const isProduction = ENV === 'production';

const inventory = loadInventory();

export default {
    input: 'src/main.tsx',
    output: {
        dir: 'dist',
        entryFileNames: `[name]-[hash]${isProduction ? '.min' : ''}.js`,
        chunkFileNames: `[name]-[hash]${isProduction ? '.min' : ''}.js`,
        format: 'system',
        sourcemap: isProduction,
    },
    plugins: [
        clear({
            targets: ['dist'],
        }),
        replace({
            preventAssignment: false,
            values: {
                'process.env.API_DEFAULT_BASE_URL': JSON.stringify(API_DEFAULT_BASE_URL || ''),
                'process.env.FILE_DEFAULT_BASE_URL': JSON.stringify(FILE_DEFAULT_BASE_URL || ''),
                'process.env.API_RELATIVE_PATH': JSON.stringify(API_RELATIVE_PATH || ''),
            },
        }),
        esbuild({
            minify: isProduction,
        }),
        html({
            template: (props) => template({ ...props, inventory }),
            title: 'Application',
            meta: [
                { 'charset': 'utf-8' },
                { 'http-equiv': 'X-UA-Compatible', 'content': 'IE=edge' },
                { 'name': 'viewport', 'content': 'width=device-width, initial-scale=1' },
            ]
        }),
        copy({
            targets: [
                { src: 'public/*', dest: 'dist' },
                ...copyTasks(inventory),
            ],
        }),
    ],
};
