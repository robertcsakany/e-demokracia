import urllib.request
import re

# This file extracts mandatory resources which otherwise would be fetched at runtime from the internet, and puts
# them in a designated folder. All of this is to support offline applications!

mainDartPath = './build/web/main.dart.js'
f = open(mainDartPath,'r')
mainDartData = f.read()
f.close()

m = re.search('https://unpkg.com/canvaskit-wasm@(.+?)/bin/canvaskit.js', mainDartData)
if m:
    version = m.group(1)

# Canvaskit
sourceRoot = f'https://unpkg.com/canvaskit-wasm@{version}/bin'
targetFolder = './build/web'

# Roboto
robotoFileName = 'KFOmCnqEu92Fr1Me5WZLCzYlKw.ttf'
robotoSource = f'https://fonts.gstatic.com/s/roboto/v20/{robotoFileName}'
robotoTarget = f'./build/web/assets/fonts/{robotoFileName}'

# Fetch sources
urllib.request.urlretrieve(f"{sourceRoot}/canvaskit.js", f"{targetFolder}/canvaskit.js")
urllib.request.urlretrieve(f"{sourceRoot}/canvaskit.wasm", f"{targetFolder}/canvaskit.wasm")
urllib.request.urlretrieve(robotoSource, robotoTarget)

# Replace references
newData = mainDartData.replace(sourceRoot, '.')
newData = newData.replace(robotoSource, f'./assets/fonts/{robotoFileName}')

# Write changes to disk
f = open(mainDartPath,'w')
f.write(newData)
f.close()
