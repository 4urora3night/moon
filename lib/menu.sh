#!/usr/bin/env bash
# by 4urora3night

ml4w_options=(" Change shell")
# -- Functions -- #
home_menu() {
  primary_text "This script can be used to tweak you installation.\nPlease select a option from the menu:"
  menu "${ml4w_options[@]}"
}
