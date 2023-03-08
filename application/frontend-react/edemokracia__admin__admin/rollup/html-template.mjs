import { EOL } from 'node:os';
import { createImportMap, getCSSLinks, getScriptLinks } from './utils.mjs';

export const makeHtmlAttributes = (attributes) => {
  if (!attributes) {
    return '';
  }

  const keys = Object.keys(attributes);
  return keys.reduce((result, key) => (result += ` ${key}="${attributes[key]}"`), '');
};

export const template = async ({ attributes, files, meta, publicPath, title, inventory }) => {
  const generateCssLink = (fileName) => {
    const attrs = makeHtmlAttributes(attributes.link);
    return `<link href="${publicPath}${fileName}" rel="stylesheet"${attrs}>`;
  };

  const generateJSScript = (fileName) => {
      const attrs = makeHtmlAttributes(attributes.script);
      return `<script src="${publicPath}${fileName}"${attrs}></script>`;
  };

  const mainScript = files.js.find(f => f.name === 'main' && f.type === 'chunk');
  const scripts = [mainScript]
    .map(({fileName}) => {
      const attrs = makeHtmlAttributes(attributes.script);
      return `<script type="systemjs-module" src="${publicPath}${fileName}"${attrs}></script>`;
    })
    .join(EOL);

  const cssFiles = getCSSLinks(inventory)
    .map(generateCssLink)
    .join(EOL);

  const headScripts = getScriptLinks(inventory)
    .map(generateJSScript)
    .join(EOL);

  const metas = meta
    .map((input) => {
      const attrs = makeHtmlAttributes(input);
      return `<meta${attrs}>`;
    })
    .join(EOL);

  return `
<!doctype html>
<html${makeHtmlAttributes(attributes.html)}>
  <head>
    ${metas}
    <link rel="icon" href="favicon.ico" />
    <link rel="apple-touch-icon" href="logo192.png" />
    <title>${title}</title>
    ${cssFiles}
    ${headScripts}
    <script type="systemjs-importmap">
${JSON.stringify({ imports: createImportMap(inventory) }, null, 4)}
    </script>
  </head>
  <body>
    <noscript>You need to enable JavaScript to run this app.</noscript>
    <div id="root"></div>
    ${scripts}
  </body>
</html>`;
};
