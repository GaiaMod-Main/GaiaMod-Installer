IF NOT EXIST GaiaMod (
    mkdir GaiaMod
)
cd GaiaMod

git clone --depth 1 https://github.com/GaiaMod-Main/GaiaMod-Vm.git scratch-vm
git clone --depth 1 https://github.com/GaiaMod-Main/gaiamod-main.github.io.git scratch-gui
git clone --depth 1 https://github.com/GaiaMod-Main/GaiaMod-Blocks.git scratch-blocks
git clone --depth 1 https://github.com/GaiaMod-Main/GaiaMod-Paint.git scratch-paint


cd GaiaMod-Vm
call npm install

cd ..

cd gaiamod-main.github.io
call npm install
call npm link ..\GaiaMod-Vm