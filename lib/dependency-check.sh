#!/usr/bin/env bash
# by 4urora3night
find_missing_apps() {
  for app in "${dependencies_apps[@]}"; do
    if ! app_installed "${app}"; then
      missing_apps+=("${app}")
    fi
  done
}

dependencies_app_checks() {
  local missing_apps=()
  find_missing_apps

  if [[ ! "${#missing_apps[@]}" -eq 0 ]]; then
    echo "MISSING APPS -> preformining install of apps:"
    for app in "${missing_apps[@]}"; do
      echo "- ${app}"
    done
    sleep 1

    for app in "${missing_apps[@]}"; do
      pacman_install "${app}"
    done

    local missing_apps=()
    find_missing_apps

    if [[ ! "${#missing_apps[@]}" -eq 0 ]]; then
      echo "MISSING APPS -> manually preform install of apps or re-run script:"
      for app in "${missing_apps[@]}"; do
        echo "- ${app}"
      done
      exit 1
    fi

  fi
}
