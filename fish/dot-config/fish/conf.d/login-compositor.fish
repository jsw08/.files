if status is-login && uwsm check may-start
    exec uwsm start hyprland.desktop
end
alias hyprland="uwsm start hyprland.desktop"
