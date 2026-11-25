-- ~/.config/hypr/hyprland.lua
local terminal = "kitty"
local mainMod  = "SUPER"

hl.monitor({ output = "", mode = "preferred", position = "auto", scale = "auto" })

hl.env("XCURSOR_SIZE", "24")

hl.on("hyprland.start", function()          -- replaces exec-once
    hl.exec_cmd("waybar")
end)

hl.config({
    general    = { gaps_in = 5, gaps_out = 20, border_size = 2, layout = "dwindle" },
    decoration = { rounding = 10 },
    input      = { kb_layout = "us", follow_mouse = 1 },
})

hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + C", hl.dsp.window.close())

for i = 1, 10 do                            -- Lua loops make workspace binds short
    local key = i % 10
    hl.bind(mainMod .. " + " .. key,         hl.dsp.focus({ workspace = i }))
    hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

hl.window_rule({ name = "no-maximize", match = { class = ".*" }, suppress_event = "maximize" })
