#!/bin/sh
rm -Rf bundle
mkdir bundle
git clone http://github.com/gmarik/vundle.git bundle/vundle
vim '+BundleInstall!'
