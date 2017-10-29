#!/bin/bash
set -xe
version=$1
curl -sSL -o Docker.dmg https://download.docker.com/mac/$version/Docker.dmg
hdiutil mount Docker.dmg

sudo rm -rf /Applications/Docker.app
sudo cp -R /Volumes/Docker/Docker.app /Applications

hdiutil unmount /Volumes/Docker

sudo /Applications/Docker.app/Contents/MacOS/Docker --quit-after-install --unattended

nohup /Applications/Docker.app/Contents/MacOS/Docker --unattended &
