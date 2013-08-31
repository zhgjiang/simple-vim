set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

"设置工作目录为当前编辑文件的目录
set bsdir=buffer
set autochdir

"编码设置
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936

"字体设置
set guifont=Consolas:h11:cANSI
set gfw=幼圆:h11:cGB2312

"语言设置
set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8

set helplang=cn
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

"禁止生成临时文件
set nobackup

"搜索忽略大小写
set ignorecase 

"搜索逐字符高亮
set incsearch

"行内替换
set gdefault

"始终显示行号
set nu!

"显示光标的坐标
set ruler

"高亮整行
set cursorline

"自动缩进
set noautoindent
set cindent
set smartindent

"Tab键的宽度
set shiftwidth=4
set tabstop=4
set expandtab

"输入法设置
if has('multi_byte_ime')
	"未开启IME时光标背景色
	hi Cursor guifg=bg guibg=Orange gui=NONE
	"开启IME时光标背景色
	hi CursorIM guifg=NONE guibg=Skyblue gui=NONE
	" 关闭Vim的自动切换IME输入法(插入模式和检索模式)
	set iminsert=0 imsearch=0
	" 插入模式输入法状态未被记录时，默认关闭IME
	"inoremap <silent> <ESC> <ESC>:set iminsert=0<CR>
endif

"与Windows共享剪贴板
set clipboard+=unnamed

"编辑vimrc之后，重新加载
autocmd! bufwritepost _vimrc source $VIM/_vimrc

"配色方案
colorscheme desert 

"################插件管理 开始################

filetype off
set rtp+=$VIM/vimfiles/bundle/vundle/
call vundle#rc('$VIM/vimfiles/bundle/')

"插件管理核心库
Bundle 'gmarik/vundle'

"插件 语法/高亮
Bundle 'JavaScript-syntax'
Bundle 'plasticboy/vim-markdown'

"HTML混排缩进改善
Bundle "pangloss/vim-javascript"

Bundle "mattn/emmet-vim"

"statuslines 增强
"Bundle 'scrooloose/vim-statline'

"代码补全
Bundle 'Shougo/neocomplcache'

"文件管理器
Bundle 'scrooloose/nerdtree'

"solarized 主题
Bundle "altercation/vim-colors-solarized"

"激活插件与文件类型的依赖关系
filetype plugin indent on

filetype plugin on

"################插件管理 结束################

"solarized主题设置
syntax enable
set background=dark
colorscheme solarized

"---NeoComplCache 启动并使用Tab触发
let g:neocomplcache_enable_at_startup = 1
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"A-t : 打开NERDTree
map <silent> <C-t>   <ESC>:NERDTree<CR>
" 以打开NERDTree时的目录为工作目录
let NERDTreeChDirMode=1

" 按F8按钮，在窗口的左侧出现taglist的窗口,像vc的左侧的workpace
nnoremap <silent> <C-l> :TlistToggle<CR><CR>
" :Tlist              调用TagList
let Tlist_Show_One_File=0                    " 只显示当前文件的tags
let Tlist_Exit_OnlyWindow=1                  " 如果Taglist窗口是最后一个窗口则退出Vim
let Tlist_Use_Right_Window=1                 " 在右侧窗口中显示
let Tlist_File_Fold_Auto_Close=1             " 自动折叠

