-----------------------------------------------------------
-- Define keymaps of Neovim and installed plugins.
-----------------------------------------------------------

local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Change leader to a comma
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-----------------------------------------------------------
-- Neovim shortcuts
-----------------------------------------------------------

-- Disable arrow keys
map('', '<up>', '<nop>')
map('', '<down>', '<nop>')
map('', '<left>', '<nop>')
map('', '<right>', '<nop>')

-- Map Esc to kk
map('i', 'jk', '<Esc>')
map('v', ';', ':')
map('n', ';', ':')

-- Clear search highlighting with <leader> and c
map('n', '<leader>c', ':nohl<CR>')

-- Toggle auto-indenting for code paste
map('n', '<F2>', ':set invpaste paste?<CR>')
vim.opt.pastetoggle = '<F2>'

-- Change split orientation 改变分割方向
map('n', '<leader>tk', '<C-w>t<C-w>K') -- change vertical to horizontal
map('n', '<leader>th', '<C-w>t<C-w>H') -- change horizontal to vertical

-- Move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- Reload configuration without restart nvim
map('n', '<leader>r', ':so %<CR>')

-- Fast saving with <leader> and s
map('n', '<leader>fs', ':w<CR>')

-- Close all windows and exit from Neovim with <leader> and q
map('n', '<leader>q', ':qa!<CR>')

-- visual  连续缩进代码
map('v', '<', '<gv')
map('v', '>', '>gv')


------------------------------------------------------------------
-- windows 分屏快捷键
map("n", "sv", ":vsp<CR>")
map("n", "sh", ":sp<CR>")

-- 关闭当前
map("n", "sc", "<C-w>c")
-- 关闭其他
map("n", "so", "<C-w>o") -- close others

-- 比例控制
map("n", "s.", ":vertical resize +20<CR>")
map("n", "s,", ":vertical resize -20<CR>")
map("n", "s=", "<C-w>=")
map("n", "sj", ":resize +10<CR>")
map("n", "sk", ":resize -10<CR>")

-- alt + hjkl  窗口之间跳转
map("n", "<A-h>", "<C-w>h")
map("n", "<A-j>", "<C-w>j")
map("n", "<A-k>", "<C-w>k")
map("n", "<A-l>", "<C-w>l")

-----------------------------------------------------------
-- Applcations and Plugins shortcuts
-----------------------------------------------------------

-- Terminal mappings
map('n', '<C-t>', ':Term<CR>', { noremap = true })  -- open
map('t', '<Esc>', '<C-\\><C-n>')                    -- exit

-- NvimTree
map('n', '<C-n>', ':NvimTreeToggle<CR>')            -- open/close
map('n', '<leader>f', ':NvimTreeRefresh<CR>')       -- refresh
map('n', '<leader>n', ':NvimTreeFindFile<CR>')      -- search file

-- Tagbar
map('n', '<leader>z', ':TagbarToggle<CR>')          -- open/close
--------------------------------------------------------------------
-- 插件快捷键

-- bufferline 左右Tab切换
map("n", "<C-h>", ":BufferLineCyclePrev<CR>")
map("n", "<C-l>", ":BufferLineCycleNext<CR>")
map("n", "<C-w>", ":bd<CR>")

-- nvim-treesitter 代码格式化
map("n", "<leader>i", "gg=G")
