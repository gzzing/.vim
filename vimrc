""""""基础设置""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible "关闭兼容模式
set number       "显示行号
set laststatus=2 "总是显示状态栏
set showcmd      "底部显示当前键入指令
set mouse=a      "所有模式支持鼠标
set helplang=cn  "帮助文档中文（需要下载）

" 设置以fileencodings中的编码方式读取文件,添加了cp936默认无
set fileencodings=usc-bom,utf-8,cp936,latin1,default

" 命令模式下，底部操作指令按下 Tab 键自动补全。
set wildmenu
" 第一次按下 Tab，会显示所有匹配的操作指令的清单；第二次按下 Tab，会依次选择各个指令。
set wildmode=longest:list,full

" 如果文件夹不存在，则新建文件夹
if !isdirectory($HOME.'/.vim/files') && exists('*mkdir')
  call mkdir($HOME.'/.vim/files')
endif

" 备份文件
set backup
set backupdir   =$HOME/.vim/files/backup/
set backupext   =-vimbackup
set backupskip  =
" 交换文件
set directory   =$HOME/.vim/files/swap//
set updatecount =100
" 撤销文件
set undofile
set undodir     =$HOME/.vim/files/undo/
" viminfo 文件
set viminfo     ='100,n$HOME/.vim/files/info/viminfo


"""""""基础设置end""""""""""""""""""""""""""""""""""""""""""""""



"""""""搜索设置"""""""""""""""""""""""""""""""""""""""""""""""""""

set incsearch     "键入字母即搜索，回车时移动光标到匹配处，esc取消
set ignorecase    "设置大小写不敏感
set smartcase     "如果有一个大写字母，则切换到大小写敏感

" 当光标一段时间保持不动了，就禁用高亮
autocmd cursorhold * set nohlsearch
" 当输入查找命令时，再启用高亮
noremap n :set hlsearch<cr>n
noremap N :set hlsearch<cr>N
noremap / :set hlsearch<cr>/
noremap ? :set hlsearch<cr>?
noremap * *:set hlsearch<cr>

" 希望关闭高亮时只需要按下 Ctrl+H，当发生下次搜索时又会自动启用。
" [注]:shell快捷键<C-h>为向前删除一个字符
nnoremap <c-h> :call DisableHighlight()<cr>
function! DisableHighlight()
    set nohlsearch
endfunc

"""""""搜索设置end""""""""""""""""""""""""""""""""""""""""""""""""




"""""""键盘映射"""""""""""""""""""""""""""""""""""""""""""""""""""

inoremap jk <ESC>

"""""""键盘映射end""""""""""""""""""""""""""""""""""""""""""""""""




"""""""配色方案"""""""""""""""""""""""""""""""""""""""""""""""""""

"set background=dark
"colorscheme solarized
"colorscheme molokai
"colorscheme phd

"""""""配色方案end"""""""""""""""""""""""""""""""""""""""""""""""
