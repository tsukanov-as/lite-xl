local config = {}

config.project_scan_rate = 5
config.fps = 60
config.max_log_items = 80
config.message_timeout = 3
config.mouse_wheel_scroll = 50 * SCALE
config.file_size_limit = 10
config.ignore_files = "^%."
config.symbol_pattern = "[%a_][%w_]*"
config.non_word_chars = " \t\n/\\()\"':,.;<>~!@#$%^&*|+=[]{}`?-"
config.undo_merge_timeout = 0.3
config.max_undos = 10000
config.highlight_current_line = true
config.line_height = 1.2
config.indent_size = 2
config.tab_type = "soft"
config.line_limit = 80
config.max_symbols = 4000
config.max_project_files = 2000
config.transitions = true
config.animation_rate = 1.0
config.blink_period = 0.8
config.draw_whitespace = false
config.borderless = false

-- Disable plugin loading setting to false the config entry
-- of the same name.
config.trimwhitespace = false

return config
