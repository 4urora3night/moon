#!/usr/bin/env bash

# -- Precautions -- #

set -o errexit
set -o nounset
set -o pipefail

# -- Variables -- #

script_dir=${0%/*}
dependencies_apps=("gum")
dependencies_files=("ui" "dependency-check" "menu" "package-manager")

# -- Dependency Checks -- #

for file in "${dependencies_files[@]}"; do
  [ ! -e "${script_dir}/lib/${file}.sh" ] && echo "FILE NOT FOUND: ${file}" && exit 1
  source "${script_dir}/lib/${file}.sh"
done

dependencies_app_checks

while true; do
  clear
  title
  home_menu
  break
done
