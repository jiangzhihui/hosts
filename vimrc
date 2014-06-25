set number 
"set the color scheme
colorscheme evening
"set the status line more informative
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
"show the status line in the window,change 2 to 0 if not to show the status line 
set laststatus=2
"set on the cursorline 
set cursorline 
"set the abbreviations 
source $VIM/abbreviation.vim
"set the file template, the template file is in /usr/share/vim/templats/ directory 
autocmd BufNewFile * silent! 0r $VIM/templates/%:e.tpl
"convert tab to spaces 
set tabstop=4 
set shiftwidth=4
set expandtab
"smart indent
set smartindent
"makefile not expand tab to spaces
autocmd FileType make setlocal noexpandtab
"each time open a file go to the location of last time it closed
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

