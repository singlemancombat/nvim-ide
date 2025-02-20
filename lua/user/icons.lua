-- https://github.com/microsoft/vscode/blob/main/src/vs/base/common/codicons.ts
-- go to the above and then enter <c-v>u<unicode> and the symbold should appear
-- or go here and upload the font file: https://mathew-kurian.github.io/CharacterMap/
-- find more here: https://www.nerdfonts.com/cheat-sheet
vim.g.use_nerd_icons = true
if vim.fn.has("mac") == 1 or vim.g.use_nerd_icons then
  -- elseif vim.fn.has "mac" == 1 then
  return {
    kind = {
      Text = "",
      Method = "m",
      Function = "",
      Constructor = "",
      -- Variable = "",
      Variable = "",
      Class = "",
      Interface = "",
      -- Module = "",
      Unit = "",
      Value = "",
      Enum = "",
      -- Keyword = "",
      -- Snippet = "",
      Snippet = "",
      Color = "",
      File = "",
      Reference = "",
      Struct = "",
      TypeParameter = "",
      Constant = "",
      EnumMember = "",
      Event = "",
      Field = "",
      Folder = "",
      Keyword = "",
      Module = "",
      Namespace = "",
      Number = "",
      Operator = "",
      Package = "",
      Property = "ﰠ",
      -- ccls-specific icons.
      TypeAlias = "",
      Parameter = "",
      StaticMethod = "",
      Macro = "",
    },
    type = {
      Array = "",
      Boolean = "蘒",
      Null = "ﳠ",
      Number = "",
      Object = "",
      String = "",
    },
    documents = {
      Default = "",
      File = "",
      Files = "",
      FileTree = "פּ",
      Folder = "",
      OpenFolder = "",
      Import = "",
      Symlink = "",
    },
    git = {
      Add = "",
      Branch = "",
      Diff = "",
      Git = "",
      Ignore = "",
      Mod = "M",
      Mod_alt = "",
      Remove = "",
      Rename = "",
      Repo = "",
      Unmerged = "שׂ",
      Untracked = "ﲉ",
      Unstaged = "",
      Staged = "",
      Conflict = "",
    },
    ui = {
      Separator = "",
      DoubleSeparator = "",
      ArrowClosed = "",
      ArrowOpen = "",
      Lock = "",
      Circle = "",
      BigCircle = "",
      BigUnfilledCircle = "",
      Close = "",
      Close_alt = "",
      NewFile = "",
      Search = "",
      Lightbulb = "",
      Dashboard = "",
      History = "",
      Comment = "",
      Bug = "",
      Code = "",
      Telescope = "",
      Gear = "",
      Package = "",
      List = "",
      SignIn = "",
      SignOut = "",
      Fire = "",
      BookMark = "",
      Pencil = "",
      ChevronRight = "",
      Table = "",
      Calendar = "",
      CloudDownload = "",
      Check = "",
      CodeAction = "",
      Emoji = "",
      EmptyFolder = "",
      EmptyFolderOpen = "",
      File = "",
      Folder = "",
      FolderOpen = "",
      Incoming = "",
      Outgoing = "",
      Indicator = "",
      Keyboard = "",
      Left = "",
      Square = "",
      SymlinkFolder = "",
      Modified = "✥",
      Modified_alt = "",
      Newspaper = "",
      Note = "",
      Perf = "",
      Play = "",
      Project = "",
      Right = "",
      RootFolderOpened = "",
      Separator = "",
      DoubleSeparator = "",
      Sort = "",
      Spell = "暈",
      Symlink = "",
    },
    diagnostics = {
      Error = "",
      Warning = "",
      Information = "",
      Question = "",
      Hint = "",
      -- Holo version
      Error_alt = "",
      Warning_alt = "",
      Information_alt = "",
      Question_alt = "",
      Hint_alt = "",
    },
    misc = {
      Robot = "ﮧ",
      Campass = "",
      Code = "",
      EscapeST = "✺",
      Gavel = "",
      Glass = "",
      PyEnv = "",
      Squirrel = "",
      Tag = "",
      Tree = "",
      Watch = "",
      Lego = "",
      Vbar = "│",
      Add = "+",
      Added = "",
      Ghost = "",
      ManUp = "",
      Vim = "",
    },
    cmp = {
      Copilot = "",
      Copilot_alt = "",
      nvim_lsp = "",
      nvim_lua = "",
      path = "",
      buffer = "",
      spell = "暈",
      luasnip = "",
      treesitter = "",
    },
    dap = {
      Breakpoint = "",
      BreakpointCondition = "ﳁ",
      BreakpointRejected = "",
      LogPoint = "",
      Pause = "",
      Play = "",
      RunLast = "↻",
      StepBack = "",
      StepInto = "",
      StepOut = "",
      StepOver = "",
      Stopped = "",
      Terminate = "ﱢ",
    },
  }
else
  --   פּ ﯟ   蘒練 some other good icons
  return {
    kind = {
      Text = " ",
      Method = " ",
      Function = " ",
      Constructor = " ",
      Field = " ",
      Variable = " ",
      Class = " ",
      Interface = " ",
      Module = " ",
      Property = " ",
      Unit = " ",
      Value = " ",
      Enum = " ",
      Keyword = " ",
      Snippet = " ",
      Color = " ",
      File = " ",
      Reference = " ",
      Folder = " ",
      EnumMember = " ",
      Constant = " ",
      Struct = " ",
      Event = " ",
      Operator = " ",
      TypeParameter = " ",
      Misc = " ",
    },
    type = {
      Array = " ",
      Number = " ",
      String = " ",
      Boolean = " ",
      Object = " ",
    },
    documents = {
      File = " ",
      Files = " ",
      Folder = " ",
      OpenFolder = " ",
    },
    git = {
      Add = " ",
      Mod = " ",
      Remove = " ",
      Ignore = " ",
      Rename = " ",
      Diff = " ",
      Repo = " ",
    },
    ui = {
      ArrowClosed = "",
      ArrowOpen = "",
      Lock = " ",
      Circle = " ",
      BigCircle = " ",
      BigUnfilledCircle = " ",
      Close = " ",
      NewFile = " ",
      Search = " ",
      Lightbulb = " ",
      Project = " ",
      Dashboard = " ",
      History = " ",
      Comment = " ",
      Bug = " ",
      Code = " ",
      Telescope = " ",
      Gear = " ",
      Package = " ",
      List = " ",
      SignIn = " ",
      SignOut = " ",
      NoteBook = " ",
      Check = " ",
      Fire = " ",
      Note = " ",
      BookMark = " ",
      Pencil = " ",
      ChevronRight = "",
      Table = " ",
      Calendar = " ",
      CloudDownload = " ",
    },
    diagnostics = {
      Error = " ",
      Warning = " ",
      Information = " ",
      Question = " ",
      Hint = " ",
    },
    misc = {
      Robot = " ",
      Squirrel = " ",
      Tag = " ",
      Watch = " ",
    },
  }
end
