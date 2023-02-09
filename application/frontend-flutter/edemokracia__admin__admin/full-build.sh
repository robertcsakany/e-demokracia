#!/bin/bash

CURR_DIR="$(pwd -P)"

export FLUTTER_HOME=$CURR_DIR/../.flutter

./flutterw clean
./flutterw pub get
./flutterw pub run build_runner build --delete-conflicting-outputs
./flutterw run -d chrome 
 