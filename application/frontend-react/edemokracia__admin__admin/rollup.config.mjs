import replace from '@rollup/plugin-replace';
import clear from 'rollup-plugin-clear';
import copy from 'rollup-plugin-copy';
import esbuild from 'rollup-plugin-esbuild';
import { npmExternalsToCopy } from './rollup/utils.js';

const ENV = process.env.NODE_ENV;

export default [
    {
        input: 'src/main.tsx',
        output: {
            dir: 'dist',
            format: 'system',
            sourcemap: ENV === 'production',
        },
        plugins: [
            clear({
                targets: ['dist'],
            }),
            replace({
                'process.env.API_DEFAULT_BASE_URL': JSON.stringify(''),
                'process.env.FILE_DEFAULT_BASE_URL': JSON.stringify(''),
                'process.env.API_RELATIVE_PATH': JSON.stringify(''),
            }),
            esbuild({
                minify: ENV === 'production',
            }),
            copy({
                targets: [
                    { src: 'public/*', dest: 'dist' },
                    { src: 'externals', dest: 'dist' },
                    ...npmExternalsToCopy([
                        ['systemjs', '/dist'],
                        ['axios', '/dist'],
                        ['@mdi/font', '/fonts'],
                        ['@mdi/font', '/css'],
                        ['@fontsource/roboto', ''],
                        ['dayjs', '/dayjs.min.js', true],
                        ['dayjs', '/locale'],
                        ['react', '/umd'],
                        ['react-dom', '/umd'],
                        ['i18next', '/dist/umd'],
                        ['react-i18next', '/dist/umd'],
                        ['@remix-run/router', '/dist'],
                        ['react-router', '/dist/umd'],
                        ['react-router-dom', '/dist/umd'],
                        ['@emotion/react', '/dist'],
                        ['@emotion/styled', '/dist'],
                    ]),
                ],
            }),
        ],
        external: [
            'react/jsx-runtime',
            'react-dom/client',
            'react-router-dom',
            'react',
            'axios',
            '@mui/material',
            '@mui/x-date-pickers',
            '@mui/x-date-pickers/AdapterDayjs',
            '@mui/x-data-grid',
            'oidc-client-ts',
            'react-oidc-context',
            'react-i18next',
            'i18next',
            '@judo/data-api-common',
        ],
    },
];
