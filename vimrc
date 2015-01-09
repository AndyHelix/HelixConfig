
"colorscheme desert
colorscheme darkblue

noremap <LeftRelease> "+y<LeftRelease>

set cursorline cursorcolumn
hi CursorLine   cterm=NONE ctermbg=LightGray ctermfg=Black guibg=darkred guifg=white
hi CursorColumn cterm=NONE ctermbg=LightGray ctermfg=Black guibg=darkred guifg=white
" nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>

set nu
set ai
set smarttab "启动增强tab
set tabstop=4 "tab为4个空格
set shiftwidth=4 "缩进宽度4个空格
set expandtab "空格代替tab
set pastetoggle=<F9>
set backupdir=~/.backupvim
set autoindent "启用自动对齐
set smartindent "智能对齐
set showmatch "匹配括号等
" 将空格显示为 | 输入方式 i mode C-k BB
" digraph 查看所有输入方式


" 设置文件编码
set fenc=utf-8
" " 设置文件编码检测类型及支持格式
set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936

if has('mouse')
    set mouse=a
endif
set mouse=a

if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au! 

  " For all text files set 'textwidth' to 78 characters.
"  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END 

else

  set autoindent                " always set autoindenting on

endif " has("autocmd")

" fold 
"
" au FileType javascript call JavaScriptFold()
set foldenable              " 开始折叠
set foldmethod=syntax       " 设置语法折叠
set foldcolumn=0            " 设置折叠区域的宽度
setlocal foldlevel=1        " 设置折叠层数为
set foldlevelstart=99       " 打开文件是默认不折叠代码

"set foldclose=all          " 设置为自动关闭折叠                
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
                            " 用空格键来开关折叠
""" KEY MAP

" map emmet ctrl-y-,
imap <C-o> <C-y>,
" nmap b a
" 把 CTRL-S 映射为 保存,因为这个操作做得太习惯了
imap <C-S> <C-C>:w<CR>

" nmap <F10> <ESC>
nmap <F12> :nohl<CR>
set hlsearch

autocmd BufNewFile,BufRead *.py nmap <C-F12> :!python %<CR>
autocmd BufNewFile,BufRead *.rb nmap <C-F12> :!ruby %<CR>
autocmd BufNewFile,BufRead *.sh nmap <C-F12> :!bash %<CR>

" 常用符号匹配
" inoremap ) ()<Esc>i          
"  "inoremap { {}<LEFT><LEFT>
"  "inoremap ( (<SPACE>)<LEFT>
"  "" inoremap } {}<LEFT>  
"  "inoremap [ []<LEFT><ESC>i  
"  "" inoremap ] []<LEFT>  
"  "inoremap < <><LEFT><ESC>i  
"  "" inoremap > <><LEFT>  
"  "inoremap " ""<LEFT><ESC>x 
"  "inoremap ' ''<LEFT>



""""" NeoBundle
if has('vim_starting')
set nocompatible               " Be iMproved
set backspace=indent,eol,start

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/neobundle.vim'

NeoBundle 'Shougo/vimproc.vim', {
      \ 'build' : {
      \     'windows' : 'tools\\update-dll-mingw',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'bling/vim-airline'
NeoBundle 'vim-scripts/L9'
NeoBundle 'vim-scripts/Command-T'
NeoBundle 'vim-scripts/taglist.vim'
NeoBundle 'SirVer/ultisnips'
NeoBundle 'honza/vim-snippets'
NeoBundle 'vim-scripts/TaskList.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'Yggdroot/indentLine'
" NeoBundle 'fatih/vim-go'
NeoBundle 'fsouza/go.vim'
" rails
NeoBundle 'tpope/vim-rails'
NeoBundle 'kien/ctrlp.vim'
"" fuzzyfinder

" js web
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'kchmck/vim-coffee-script'
" python
NeoBundle 'vim-scripts/pep8'
" elixir
NeoBundle 'carlosgaldino/elixir-snippets'
NeoBundle 'elixir-lang/vim-elixir'

" Jade
NeoBundle 'vim-scripts/jade.vim'

" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
NeoBundle 'lilydjwg/colorizer'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck


"""
"" airline
set t_Co=256
let g:airline_powerline_fonts = 1
" the separator used on the left side >
let g:airline_left_sep='>'

" the separator used on the right side >
let g:airline_right_sep='<'

" enable modified detection >
let g:airline_detect_modified=1

" enable paste detection >
let g:airline_detect_paste=1

" enable iminsert detection >
let g:airline_detect_iminsert=0

" determine whether inactive windows should have the left section collapsed to
" only the filename of that buffer.  >
let g:airline_inactive_collapse=1

" themes are automatically selected based on the matching colorscheme. this
" can be overridden by defining a value. >
let g:airline_theme ='molokai'

" if you want to patch the airline theme before it gets applied, you can
" supply the name of a function where you can modify the palette. >
let g:airline_theme_patch_func = 'AirlineThemePatch'
function! AirlineThemePatch(palette)
if g:airline_theme == 'badwolf'
  for colors in values(a:palette.inactive)
    let colors[3] = 245
  endfor
endif
endfunction

" enable/disable automatic population of the `g:airline_symbols` dictionary
" with powerline symbols. >
let g:airline_powerline_fonts=0

" define the set of text to display for each mode.  >
let g:airline_mode_map = {} " see source for the defaults

" or copy paste the following into your vimrc for shortform text
let g:airline_mode_map = {
  \ '__' : '-',
  \ 'n'  : 'N',
  \ 'i'  : 'I',
  \ 'R'  : 'R',
  \ 'c'  : 'C',
  \ 'v'  : 'V',
  \ 'V'  : 'V',
  \ '' : 'V',
  \ 's'  : 'S',
  \ 'S'  : 'S',
  \ '' : 'S',
  \ }

" define the set of filename match queries which excludes a window from having
" its statusline modified >
let g:airline_exclude_filenames = [] " see source for current list

" define the set of filetypes which are excluded from having its window
" statusline modified >
let g:airline_exclude_filetypes = [] " see source for current list

" defines whether the preview window should be excluded from have its window
" statusline modified (may help with plugins which use the preview window
" heavily) >
let g:airline_exclude_preview = 0
set laststatus=2

"
"
"UltiSnips

"插入模式下直接通过ii键来触发UltiSnips的代码块补全
let g:UltiSnipsExpandTrigger="vv"

"iI弹出UltiSnips的可用列表,不常用的, 所以这里设置成了特殊的iI映射
let g:UltiSnipsListSnippets="vV"

"II跳转的到下一个代码块可编辑区
let g:UltiSnipsJumpForwardTrigger="VV"

"OO跳转到上一个代码块可编辑区

let g:UltiSnipsJumpBackwardTrigger="OO"

" NERDTree
map <F8> :NERDTreeToggle<CR>
" TODO
 """ tasklist
" let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
" nmap <leader>a  :TlistToggle<cr>

" 按退格键时判断当前光标前一个字符，如果是左括号，则删除对应的右括号以及括号中间的内容
"function! RemovePairs()
"    let l:line = getline(".")
"    let l:previous_char = l:line[col(".")-1] " 取得当前光标前一个字符
" 
"    if index(["(", "[", "{"], l:previous_char) != -1
"        let l:original_pos = getpos(".")
"        execute "normal %"
"        let l:new_pos = getpos(".")
" 
"        " 如果没有匹配的右括号
"        if l:original_pos == l:new_pos
"            execute "normal! a\<BS>"
"            return
"        end
" 
"        let l:line2 = getline(".")
"        if len(l:line2) == col(".")
"            " 如果右括号是当前行最后一个字符
"            execute "normal! v%xa"
"        else
"            " 如果右括号不是当前行最后一个字符
"            execute "normal! v%xi"
"        end
" 
"    else
"        execute "normal! a\<BS>"
"    end
"endfunction
"" 用退格键删除一个左括号时同时删除对应的右括号
"inoremap <BS> <ESC>:call RemovePairs()<CR>a
"" 这样就比较完美了。不过在非括号时其实还有个小问题（比如“<行首>a<光标>bcde”这样的情况下，按了退格键后，“a”虽然被删除了，但光标不是移到行首，而是移到 b 的后面），但应该不会对使用造成太大影响
"" 在自动补全了右括号之后，如果用户再输入右括号会怎么样呢？一般来说，比较合理的做法似乎是忽略掉这个后输入的多余的右括号，直接将光标向右移到一格
"" 输入一个字符时，如果下一个字符也是括号，则删除它，避免出现重复字符
"function! RemoveNextDoubleChar(char)
"    let l:line = getline(".")
"    let l:next_char = l:line[col(".")] " 取得当前光标后一个字符
" 
"    if a:char == l:next_char
"        execute "normal! l"
"    else
"        execute "normal! i" . a:char . ""
"    end
"endfunction
"inoremap ) <ESC>:call RemoveNextDoubleChar(')')<CR>a
"inoremap ] <ESC>:call RemoveNextDoubleChar(']')<CR>a
"inoremap } <ESC>:call RemoveNextDoubleChar('}')<CR>a
"
"
"taglist{
    let Tlist_Show_One_File = 1            "只显示当前文件的taglist，默认是显示多个
    let Tlist_Exit_OnlyWindow = 1          "如果taglist是最后一个窗口，则退出vim
    let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist
    let Tlist_GainFocus_On_ToggleOpen = 1  "打开taglist时，光标保留在taglist窗口
    let Tlist_Ctags_Cmd='/usr/bin/ctags'  "设置ctags命令的位置
    nnoremap <leader>tl : Tlist<CR>        "设置关闭和打开taglist窗口的快捷键
    "}
"
"
"
"
"
"
"
"
"
"
"set list
set listchars=nbsp:¦
