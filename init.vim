set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'fatih/vim-go'
Plug 'majutsushi/tagbar'
Plug 'Valloric/YouCompleteMe'
call plug#end()

set number
syntax on

nmap <F12> :TagbarToggle<CR>:NERDTreeToggle<CR>:set number<CR><C-w>l
nmap <F6> :e<CR>
nmap <F10> gg=G

"设定Ctrl + h/j/k/l为切换到左/下/上/右侧分栏
nmap <C-l> <Esc><C-w>l
nmap <C-h> <Esc><C-w>h
nmap <C-j> <Esc><C-w>j
nmap <C-k> <Esc><C-w>k
"使用Ctrl + n来切换多个文件tab
nmap <C-n> <Esc>:tabnext<CR>
nmap <C-p> <Esc>:tabprevious<CR>

"使用space代替tab键
set expandtab
"使用4个空格代替tab
set tabstop=4
"自动缩进为4格
set shiftwidth=4
"关闭备份文件
set nobackup
"自动加载文件变更
set autoread
"自动保存未保存文件
set autowriteall
"设定高亮行和高亮列
set cursorline
set cursorcolumn

set noswapfile

"设定高亮颜色
hi CursorLine   cterm=NONE ctermbg=darkgreen ctermfg=white guibg=darkred
"guifg=white
hi CursorColumn cterm=NONE ctermbg=darkgreen ctermfg=white guibg=darkred
"guifg=white

let g:ycm_global_ycm_extra_conf='~/.config/nvim/plugged/YouCompleteMe/.ycm_extra_conf.py'

let g:go_fmt_command = 'goimports'
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_snippet_engine = 'neosnippet'

set encoding=utf-8

"NerdTree
let NERDTreeShowHidden=1
