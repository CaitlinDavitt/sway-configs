local wezterm = require 'wezterm';
wezterm.add_to_config_reload_watch_list("/home/caitlin/.cache/wezterm-wal.toml");
return {
	color_scheme_dirs = {"/home/caitlin/.config/wezterm/colors"},
  color_scheme = "nord",

	font = wezterm.font_with_fallback({
    		"Fira Code", 
    		"Ubuntu Mono",

	}),
  	window_padding = {
    		left = 10,
    		right = 10,
    		top = 10,
   		bottom = 10,
  	},
  	hide_tab_bar_if_only_one_tab = true,
  	window_background_opacity = 1,
  	enable_wayland = false,
	warn_about_missing_glyphs = false,
}
