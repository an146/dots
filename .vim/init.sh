#!/bin/sh
cd ~/.vim || exit 1
rm -Rf bundle
mkdir bundle
git clone http://github.com/gmarik/vundle.git bundle/vundle
vim '+BundleInstall!' '+q'
[ -d bundle/Command-T ] && {
    cd bundle/Command-T
    rake make
}
