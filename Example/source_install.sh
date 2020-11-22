#/bin/sh
pod cache clean --all 
rm -rf ./Pods
IS_SOURCE='true' pod install 