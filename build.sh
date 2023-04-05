#!/bin/bash

echo "Welcome to AliceSpec!"
echo "Copyright © 2023 WSOFT All Rights Reserved."
echo;
echo "AliceSpec's build has a need to Python3,MkDocs,Lantana and its dependents."
echo "Moreover, You can build legal docs, but documents that aren't from WSOFT shall have no legal effect."
echo "To learn more about it, please check at https://docs.wsoft.ws/"

if !(type "pip3" > /dev/null 2>&1); then
    echo "Pypl3 Doesn't exist! Install now."
    apt install python3-pip
fi

if !(type "mkdocs" > /dev/null 2>&1); then
    echo "MkDocs Doesn't exist! Install now."
    pip3 install --no-cache-dir lantana
fi

echo "Building the WSOFTDocs..."
mkdocs build
echo "Build completed. Please check /site directory."
