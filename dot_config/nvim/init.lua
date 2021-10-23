local opt = vim.opt
local cmd = vim.cmd
local g = vim.g
local utils = require("utils")
local termcodes = utils.termcodes
local nmap = utils.nmap
local vmap = utils.vmap
local imap = utils.imap
local xmap = utils.xmap
local omap = utils.omap
local nnoremap = utils.nnoremap
local inoremap = utils.inoremap
local vnoremap = utils.vnoremap

require("plugins")

-- ------- --
-- General --
-- ------- --
opt.scrolloff = 8 -- Minimal number of screen lines to keep above and below the cursor.
opt.number = true -- Precede each line with its line number.
opt.relativenumber = true -- Show the line number relative to the line with the cursor in front of each line.
opt.wrap = true -- This option changes how text is displayed.  It doesn't change the text in the buffer, see 'textwidth' for that.  When on, lines longer than the width of the window will wrap and displaying continues on the next line.
opt.tabstop = 2 -- Number of spaces that a <Tab> in the file counts for.
opt.softtabstop = 2 -- Number of spaces that a <Tab> counts for while performing editing operations, like inserting a <Tab> or using <BS>.  It "feels" like <Tab>s are being inserted, while in fact a mix of spaces and <Tab>s is used.
opt.shiftwidth = 2 -- Number of spaces to use for each step of (auto)indent.  Used for |'cindent'|, |>>|, |<<|, etc.
opt.expandtab = true -- In Insert mode: Use the appropriate number of spaces to insert a <Tab>.  Spaces are used in indents with the '>' and '<' commands and when 'autoindent' is on.
opt.autoindent = true -- Copy indent from current line when starting a new line (typing <CR> in Insert mode or when using the "o" or "O" command).  If you do not type anything on the new line except <BS> or CTRL-D and then type <Esc>, CTRL-O or <CR>, the indent is deleted again.
opt.smartindent = true -- Do smart autoindenting when starting a new line.  Works for C-like programs, but can also be used for other languages.
opt.cursorline = true -- Highlight the screen line of the cursor with CursorLine |hl-CursorLine|.  Useful to easily spot the cursor.  Will make screen redrawing slower.  When Visual mode is active the highlighting isn't used to make it easier to see the selected text.
opt.nrformats = "bin,hex" -- This defines what bases Vim will consider for numbers when using the CTRL-A and CTRL-X commands for adding to and subtracting from a number respectively.
opt.ignorecase  = true -- Ignore case in search patterns.  Also used when searching in the tags file.  Also see 'smartcase' and 'tagcase'.  Can be overruled by using "\c" or "\C" in the pattern, see |/ignorecase|.
opt.smartcase = true -- Override the 'ignorecase' option if the search pattern contains upper case characters.  Only used when the search pattern is typed and 'ignorecase' option is on.  Used for the commands "/", "?", "n", "N", ":g" and ":s".  Not used for "*", "#", "gd", tag search, etc.  After "*" and "#" you can make 'smartcase' used by doing a "/" command, recalling the search pattern from history and hitting <Enter>.
opt.cmdheight = 2 -- Number of screen lines to use for the command-line.  Helps avoiding |hit-enter| prompts.  The value of this option is stored with the tab page, so that each tab page can have a different value.
opt.hidden = true -- When off a buffer is unloaded when it is |abandon|ed.  When on a buffer becomes hidden when it is |abandon|ed.  If the buffer is still displayed in another window, it does not become hidden, of course.
opt.signcolumn = "yes" -- When and how to draw the signcolumn.

-- -------- --
-- Mappings --
-- -------- --
g.mapleader = " "
nnoremap("<leader>pv", ":Vex<CR>")
nnoremap("<leader><CR>", ":source ~/.config/nvim/init.lua<CR>")
nnoremap("<C-p>", ":GFiles<CR>")
nnoremap("<leader>pf", ":Files<CR>")
nnoremap("<C-k>", ":cprev<CR>zz")
nnoremap("<C-j>", ":cnext<CR>zz")

-- ---------- --
-- Appearance --
-- ---------- --
cmd [[syntax on]] -- Syntax highlighting enables Vim to show parts of the text in another font or color.	Those parts can be specific keywords or text matching a pattern.  Vim doesn't parse the whole file (to keep it fast), so the highlighting has its limitations.  Lexical highlighting might be a better name.
cmd [[set termguicolors]] -- Enables 24-bit RGB color in the |TUI|.
cmd [[colorscheme one]] -- Load color scheme {name}.
cmd [[set background=dark]] -- When set to "dark" or "light", adjusts the default color groups for that background type. This option does NOT change the background color, it tells Nvim what the "inherited" (terminal/GUI) background looks like.
cmd [[let g:one_allow_italics = 1]] -- I love italic for comments.
