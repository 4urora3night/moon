title() {
  gum style --border rounded --padding="1 4" --margin="0 2" --foreground="2" \
  "███╗   ███╗ ██████╗  ██████╗ ███╗   ██╗
████╗ ████║██╔═══██╗██╔═══██╗████╗  ██║
██╔████╔██║██║   ██║██║   ██║██╔██╗ ██║
██║╚██╔╝██║██║   ██║██║   ██║██║╚██╗██║
██║ ╚═╝ ██║╚██████╔╝╚██████╔╝██║ ╚████║
╚═╝     ╚═╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝"
}

primary_text() {
  local text
  text="$(echo -e "$1")"
  gum style --border rounded --padding="1 4" --margin="0 2" --foreground="7" "${text}"
}

menu() {
  gum choose --cursor.foreground="2" --cursor=" • " --header="" --height="4"  "${@}"
}
