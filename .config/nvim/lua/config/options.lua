-- declare variables
local global = vim.g
local option = vim.opt

vim.scriptencoding = "utf-8"

-- Map <leader>

global.mapleader = " "
global.maplocalleader = " "

-- set options
option.title = true -- When on, the title of the window will be set to the value of 'titlestring'
-- option.titlestring = [[%f %h%m%r%w %{v:progname} (%{tabpagenr()} of %{tabpagenr('$')})]]
option.mouse = "a" -- Enable the use of the mouse. "a" you can use on all modes
option.number = true -- Print the line number in front of each line
option.relativenumber = true -- Show the line number relative to the line with the cursor in front of each line.
option.syntax = "on" -- When this option is set, the syntax with this name is loaded.
option.autoindent = true -- Copy indent from current line when starting a new line.
option.cursorline = true -- Highlight the screen line of the cursor with CursorLine.
option.expandtab = true -- In Insert mode: Use the appropriate number of spaces to insert a <Tab>.
option.shiftwidth = 2 -- Number of spaces to use for each step of (auto)indent.
option.tabstop = 2 -- Number of spaces that a <Tab> in the file counts for.
option.clipboard = "unnamedplus" -- uses the clipboard register for all operations except yank.
option.ruler = false -- Disable the ruler.
option.compatible = false -- Disable vi compatibility.
option.syntax = "on" -- Enable syntax highlighting.
option.wildmode = "longest,list,full" -- Set the way to complete the word.
option.guicursor = "" -- Disable the cursorline.
option.encoding = "utf-8" -- Set the encoding to UTF-8.