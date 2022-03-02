local status_ok, notify = pcall(require, "notify")
if not status_ok then
	return
end

local icons = require("user.icons")

notify.setup({
	-- Animation style (see below for details)
	stage = "fade_in_slide_out",

	-- Function called when a new window is opened, use for changing win settings/config
	on_open = nil,

	-- Function called when a window is closed
	on_close = nil,

	-- Render function for notification. See notfiy-render()
	render = "default",

	-- Default timout for notificetions
	timeout = 1000,

	-- For stages change opacity this is treated as the highlight behind the window
	-- Set this to either a highlight group or an RGB hex value e.g. "#000000"
	background_color = "Normal",

	-- Minimum width for notofocation windows
	minimum_width = 10,

	-- icons for the different levels
	icons = {
		ERROR = icons.diagnostics.Error,
		WARN = icons.diagnostics.Warning,
		INFO = icons.diagnostics.Information,
		DEBUG = icons.ui.Bug,
		TRACE = icons.ui.Pencil,
	},
})

vim.notify = notify
