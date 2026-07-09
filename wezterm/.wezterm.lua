local wezterm = require("wezterm")

local config = wezterm.config_builder()
local act = wezterm.action

--- ON START UP ---

local mux = wezterm.mux
wezterm.on("gui-startup", function(cmd)
	local _, _, window = mux.spawn_window(cmd or {})
	window:gui_window():maximize()
end)

--- WINDOW ---

config.window_decorations = "RESIZE"

--- APPEARANCE ---

-- fonts
config.font_size = 13

-- color scheme

-- Flatland
-- Neon Night (Gogh)
-- Neon
-- UnderTheSea
-- Kanagawa Dragon (Gogh)
local my_underthesea = {
	foreground = "#ffffff",
	background = "050505",
	cursor_bg = "#00ff00",
	cursor_border = "#00ff00",
	cursor_fg = "#031413",
	selection_bg = "#004400",
	selection_fg = "#4dffda",

	ansi = { "#022026", "#b2302d", "#004400", "#59819c", "#459a86", "#00599d", "#5d7e19", "#405555" },
	brights = { "#384451", "#ff4242", "#2aea5e", "#8ed4fd", "#00ff00", "#1298ff", "#98d028", "#58fbd6" },
}
config.color_schemes = { ["MyUnderTheSea"] = my_underthesea }
config.color_scheme = "MyUnderTheSea"

-- tab bar
config.enable_tab_bar = false
-- uncomment if tab bar is enabled
-- config.use_fancy_tab_bar = false
-- config.colors = {
-- 	tab_bar = {
-- 		background = "#272927",
--
-- 		active_tab = {
-- 			bg_color = "#14161a",
-- 			fg_color = "#c0c0c0",
-- 			intensity = "Normal", -- "Half", "Normal" or "Bold" intensity for tab
-- 			underline = "None", -- "None", "Single" or "Double" underline for
-- 			italic = false,
-- 		},
--
-- 		inactive_tab = {
-- 			bg_color = "#272927",
-- 			fg_color = "#808080",
-- 		},
--
-- 		inactive_tab_hover = {
-- 			bg_color = "#14161a",
-- 			fg_color = "#909090",
-- 			italic = true,
-- 		},
--
-- 		new_tab = {
-- 			bg_color = "#272927",
-- 			fg_color = "#808080",
-- 		},
--
-- 		new_tab_hover = {
-- 			bg_color = "#14161a",
-- 			fg_color = "#909090",
-- 			italic = true,
-- 		},
-- 	},
-- }

-- window
config.window_background_opacity = 0.85
config.text_background_opacity = 0.85

--- LAUNCH ---

config.default_prog = { "Ubuntu" }
config.launch_menu = {
	{
		label = "Powershell",
		domain = { DomainName = "local" },
		args = { "powershell.exe" },
	},
	{
		label = "bash",
		args = { "bash" },
	},
}

--- FONT ---

config.font = wezterm.font("Hack Nerd Font", { weight = "Regular" })

--- KEY BINDINGS ---

config.keys = {
	{ key = "s", mods = "ALT", action = act.ShowLauncher },
	{
		key = "r",
		mods = "ALT",
		action = act.PromptInputLine({
			description = "Rename tab",
			action = wezterm.action_callback(function(window, _, line)
				if line then
					window:active_tab():set_title(line)
				end
			end),
		}),
	},
	{ key = "f", mods = "ALT", action = act.ShowLauncherArgs({ flags = "TABS" }) },
}

return config
