#!/bin/bash
set -e

mkdir -p GaiaMod
cd GaiaMod

git clone --depth 1 https://github.com/GaiaMod-Main/GaiaMod-Vm.git scratch-vm
git clone --depth 1 https://github.com/GaiaMod-Main/gaiamod-main.github.io.git scratch-gui
git clone --depth 1 https://github.com/GaiaMod-Main/GaiaMod-Blocks.git scratch-blocks
git clone --depth 1 https://github.com/GaiaMod-Main/GaiaMod-Paint.git scratch-paint

cd GaiaMod-Vm
npm install

cd ..

cd gaiamod-main.github.io
npm install
npm link ../GaiaMod-Vm

