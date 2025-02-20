local status_ok, cheatsheet = pcall(require, "cheatsheet")
if not status_ok then
  return
end

local actions = require("cheatsheet.telescope.actions")

cheatsheet.setup({
  -- Whether to show bundled cheatsheets

  -- For generic cheatsheets like default, unicode, nerd-fonts, etc
  -- bundled_cheatsheets = {
  --     enabled = {},
  --     disabled = {},
  -- },
  bundled_cheatsheets = true,

  -- For plugin specific cheatsheets
  -- bundled_plugin_cheatsheets = {
  --     enabled = {},
  --     disabled = {},
  -- }
  bundled_plugin_cheatsheets = true,

  -- For bundled plugin cheatsheets, do not show a sheet if you
  -- don't have the plugin installed (searches runtimepath for
  -- same directory name)
  include_only_installed_plugins = true,

  -- Key mappings bound inside the telescope window
  telescope_mappings = {
      ['<CR>'] = actions.select_or_fill_commandline,
      ['<A-CR>'] = actions.select_or_execute,
      ['<C-Y>'] = actions.copy_cheat_value,
      ['<C-E>'] = actions.edit_user_cheatsheet,
  },
})
