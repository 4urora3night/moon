#!/usr/bin/env bash
# by 4urora3night
app_installed() {
  if pacman -Qqs "${1}" | grep "${1}" &>/dev/null; then
    return 0
  else
    return 1
  fi
}

pacman_install() {
  sudo pacman -S --noconfirm "${1}"
}
