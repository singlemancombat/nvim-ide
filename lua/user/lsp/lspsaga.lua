-- Put in ~/.vim/lua/lsp-config.lua
--- Configuration for LSP, formatters, and linters.
local status_cmp_ok, saga = pcall(require, "lspsaga")
if not status_cmp_ok then
  return
end

local icons = require "user.icons"
local colors = require "user.colors"

saga.setup({
  preview = {
    lines_above = 1,
    lines_below = 12,
  },
  scroll_preview = {
    scroll_down = "<C-j>",
    scroll_up = "<C-k>",
  },
  request_timeout = 3000,
  finder = {
    edit = { "o", "<CR>" },
    vsplit = "s",
    split = "i",
    tabe = "t",
    quit = { "q", "<ESC>" },
  },
  definition = {
    edit = "<C-c>o",
    vsplit = "<C-c>v",
    split = "<C-c>s",
    tabe = "<C-c>t",
    quit = "q",
    close = "<Esc>",
  },
  code_action = {
    num_shortcut = true,
    keys = {
      quit = "q",
      exec = "<CR>",
    },
  },
  lightbulb = {
    enable = false,
    sign = true,
    enable_in_insert = true,
    sign_priority = 20,
    virtual_text = true,
  },
  diagnostic = {
    twice_into = false,
    show_code_action = false,
    show_source = true,
    keys = {
      exec_action = "<CR>",
      quit = "q",
      go_action = "g",
    },
  },
  rename = {
    quit = "<C-c>",
    exec = "<CR>",
    mark = "x",
    confirm = "<CR>",
    in_select = true,
  },
  outline = {
    win_position = "right",
    win_with = "_sagaoutline",
    win_width = 30,
    show_detail = true,
    auto_preview = false,
    auto_refresh = true,
    auto_close = true,
    keys = {
      jump = "<CR>",
      expand_collapse = "u",
      quit = "q",
    },
  },
  symbol_in_winbar = {
    in_custom = true,
    enable = false,
    separator = icons.ui.Separator,
    hide_keyword = true,
    show_file = false,
    color_mode = true,
  },
  ui = {
    theme = "round",
    border = "single", -- Can be single, double, rounded, solid, shadow.
    winblend = 0,
    expand = icons.ui.ArrowClosed,
    collapse = icons.ui.ArrowOpen,
    preview = icons.ui.Newspaper,
    code_action = icons.ui.CodeAction,
    diagnostic = icons.ui.Bug,
    incoming = icons.ui.Incoming,
    outgoing = icons.ui.Outgoing,
    colors = {
      normal_bg = colors.base,
      title_bg = colors.base,
      red = colors.red,
      megenta = colors.maroon,
      orange = colors.peach,
      yellow = colors.yellow,
      green = colors.green,
      cyan = colors.sapphire,
      blue = colors.blue,
      purple = colors.mauve,
      white = colors.text,
      black = colors.mantle,
      fg = colors.text,
    },
    kind = {
      -- Kind
      Class = { icons.kind.Class, colors.yellow },
      Constant = { icons.kind.Constant, colors.peach },
      Constructor = { icons.kind.Constructor, colors.sapphire },
      Enum = { icons.kind.Enum, colors.yellow },
      EnumMember = { icons.kind.EnumMember, colors.rosewater },
      Event = { icons.kind.Event, colors.yellow },
      Field = { icons.kind.Field, colors.teal },
      File = { icons.kind.File, colors.rosewater },
      Function = { icons.kind.Function, colors.blue },
      Interface = { icons.kind.Interface, colors.yellow },
      Key = { icons.kind.Keyword, colors.red },
      Method = { icons.kind.Method, colors.blue },
      Module = { icons.kind.Module, colors.blue },
      Namespace = { icons.kind.Namespace, colors.blue },
      Number = { icons.kind.Number, colors.peach },
      Operator = { icons.kind.Operator, colors.sky },
      Package = { icons.kind.Package, colors.blue },
      Property = { icons.kind.Property, colors.teal },
      Struct = { icons.kind.Struct, colors.yellow },
      TypeParameter = { icons.kind.TypeParameter, colors.maroon },
      Variable = { icons.kind.Variable, colors.peach },
      -- Type
      Array = { icons.type.Array, colors.peach },
      Boolean = { icons.type.Boolean, colors.peach },
      Null = { icons.type.Null, colors.yellow },
      Object = { icons.type.Object, colors.yellow },
      String = { icons.type.String, colors.green },
      -- ccls-specific icons.
      TypeAlias = { icons.kind.TypeAlias, colors.green },
      Parameter = { icons.kind.Parameter, colors.blue },
      StaticMethod = { icons.kind.StaticMethod, colors.peach },
      -- Microsoft-specific icons.
      Text = { icons.kind.Text, colors.green },
      Snippet = { icons.kind.Snippet, colors.mauve },
      Folder = { icons.kind.Folder, colors.blue },
      Unit = { icons.kind.Unit, colors.green },
      Value = { icons.kind.Value, colors.peach },
    },
  },
})
