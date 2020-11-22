#/bin/sh
pod cache clean --all 
rm -rf ./Pods
IS_SOURCE='false' pod install 