#!/bin/bash

. config.mk

export NVM_DIR=$HOME/.nvm;
source $NVM_DIR/nvm.sh;

APPDIR=/opt/music-site
cd "${APPDIR}"
# With Node 18, there is a complaint about requiring some dependency.
nvm run 20 node_modules/static-web-pick/static-web-pick.js "${APPDIR}/music-site-config.js" "${METADIR}" "${APPDIR}/ids.json" deathmtn piece
