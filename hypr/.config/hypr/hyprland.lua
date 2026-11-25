# Top of file: use ALT in the VM so Mint doesn't swallow Super.
# Change the existing modifier variable (default: $mainMod = SUPER).
$mainMod = ALT

general {
    layout = master
}

master {
    new_status = slave      # new windows stack beside the master
    mfact = 0.6             # master takes 60%
    orientation = left
}

exec-once = quickshell
exec-once = spice-vdagent

# Keybinds (add to the existing ones)
bind = $mainMod, Return, exec, kitty
bind = $mainMod, Space, exec, fuzzel         # placeholder launcher, apps only
bind = $mainMod, J, layoutmsg, cyclenext
bind = $mainMod, K, layoutmsg, cycleprev
bind = $mainMod SHIFT, Return, layoutmsg, swapwithmaster