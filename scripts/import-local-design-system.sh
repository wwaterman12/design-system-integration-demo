#!/bin/bash
#
# Run from root directory of the project
#
# Usage:
# ./scripts/import-local-design-system.sh /path/to/design-system/
#
# Explanation:
# As Design System doesnt have yet its own official release procedure.
# This script will build DS locally and install it under node_modules/ so it will be seen as a normal npm package.
# Make sure you have Design System repo downloaded and follow its installation instructions first.


LOCAL_DESIGN_SYSTEM_PATH='../design-system'

function main () {
  if [ -z "$LOCAL_DESIGN_SYSTEM_PATH" ]; then
    echo 'ERR! proper usage: ./scripts/import-local-design-system.sh /path/to/design-system/'
    exit 1
  fi

  build_design_system
  copy_package_to_local_node_modules
  unpack
  remove_parcel_cache
  remove_temps
}

########

function build_design_system () {
  (
    cd $LOCAL_DESIGN_SYSTEM_PATH
    npm run build
  )
}

function copy_package_to_local_node_modules () {
  npm pack $LOCAL_DESIGN_SYSTEM_PATH
  mv virtusize-design-system-*.tgz ./node_modules/
}

function unpack () {
  (
    cd ./node_modules/

    rm -rf ./@virtusize
    mkdir -p @virtusize/design-system

    tar -xvz -f ./virtusize-design-system-*.tgz
    mv package/* @virtusize/design-system
  )
}

function remove_parcel_cache () {
  rm -rf ./.cache
}

function remove_temps () {
  rm ./node_modules/virtusize-design-system-*.tgz
}

# go!
main
