local wezterm = require("wezterm")
local act = wezterm.action
local mux = wezterm.mux
wezterm.on("gui-startup", function(cmd)
	local _, dd1_pane, window = mux.spawn_window({ args = { "ssh", "joy.tsay@dd1" } })
	local _, dd3_pane, _ = window:spawn_tab({ args = { "ssh", "joy.tsay@dd3" } })
	local _, dd4_pane, _ = window:spawn_tab({ args = { "ssh", "joy.tsay@dd4" } })
	local _, dd5_pane, _ = window:spawn_tab({ args = { "ssh", "joy.tsay@dd5" } })
	local _, dd6_pane, _ = window:spawn_tab({ args = { "ssh", "joy.tsay@dd6" } })
	window:gui_window():maximize()
	dd1_pane:send_paste("tmux a\n")
	dd3_pane:send_paste("tmux a\n")
	dd4_pane:send_paste("tmux a\n")
	dd5_pane:send_paste("tmux a\n")
	dd6_pane:send_paste("tmux a\n")
end)
local config = wezterm.config_builder()
config.color_scheme = "Catppuccin Macchiato"
config.font_size = 14
config.default_prog = { "C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\powershell.exe" }
config.window_background_opacity = 0.8
config.initial_rows = 35
config.initial_cols = 160
config.window_decorations = "RESIZE"
config.window_close_confirmation = "NeverPrompt"
config.max_fps = 144
config.animation_fps = 60
config.cursor_blink_rate = 250
return config
