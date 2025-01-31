if not set -q SSH_TTY && not set -q SSH_CONNECTION && not set -q SSH_CLIENT && status is-login && uwsm check may-start
    echo "Logged in! Starting hieperland!"
    exec uwsm start hyprland.desktop
end
alias hyprland="uwsm start hyprland.desktop"
