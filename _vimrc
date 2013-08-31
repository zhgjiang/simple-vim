set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

"���ù���Ŀ¼Ϊ��ǰ�༭�ļ���Ŀ¼
set bsdir=buffer
set autochdir

"��������
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936

"��������
set guifont=Consolas:h11:cANSI
set gfw=��Բ:h11:cGB2312

"��������
set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8

set helplang=cn
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

"��ֹ������ʱ�ļ�
set nobackup

"�������Դ�Сд
set ignorecase 

"�������ַ�����
set incsearch

"�����滻
set gdefault

"ʼ����ʾ�к�
set nu!

"��ʾ��������
set ruler

"��������
set cursorline

"�Զ�����
set noautoindent
set cindent
set smartindent

"Tab���Ŀ��
set shiftwidth=4
set tabstop=4
set expandtab

"���뷨����
if has('multi_byte_ime')
	"δ����IMEʱ��걳��ɫ
	hi Cursor guifg=bg guibg=Orange gui=NONE
	"����IMEʱ��걳��ɫ
	hi CursorIM guifg=NONE guibg=Skyblue gui=NONE
	" �ر�Vim���Զ��л�IME���뷨(����ģʽ�ͼ���ģʽ)
	set iminsert=0 imsearch=0
	" ����ģʽ���뷨״̬δ����¼ʱ��Ĭ�Ϲر�IME
	"inoremap <silent> <ESC> <ESC>:set iminsert=0<CR>
endif

"��Windows���������
set clipboard+=unnamed

"�༭vimrc֮�����¼���
autocmd! bufwritepost _vimrc source $VIM/_vimrc

"��ɫ����
colorscheme desert 

"################������� ��ʼ################

filetype off
set rtp+=$VIM/vimfiles/bundle/vundle/
call vundle#rc('$VIM/vimfiles/bundle/')

"���������Ŀ�
Bundle 'gmarik/vundle'

"��� �﷨/����
Bundle 'JavaScript-syntax'
Bundle 'plasticboy/vim-markdown'

"HTML������������
Bundle "pangloss/vim-javascript"

Bundle "mattn/emmet-vim"

"statuslines ��ǿ
"Bundle 'scrooloose/vim-statline'

"���벹ȫ
Bundle 'Shougo/neocomplcache'

"�ļ�������
Bundle 'scrooloose/nerdtree'

"solarized ����
Bundle "altercation/vim-colors-solarized"

"���������ļ����͵�������ϵ
filetype plugin indent on

filetype plugin on

"################������� ����################

"solarized��������
syntax enable
set background=dark
colorscheme solarized

"---NeoComplCache ������ʹ��Tab����
let g:neocomplcache_enable_at_startup = 1
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"A-t : ��NERDTree
map <silent> <C-t>   <ESC>:NERDTree<CR>
" �Դ�NERDTreeʱ��Ŀ¼Ϊ����Ŀ¼
let NERDTreeChDirMode=1

" ��F8��ť���ڴ��ڵ�������taglist�Ĵ���,��vc������workpace
nnoremap <silent> <C-l> :TlistToggle<CR><CR>
" :Tlist              ����TagList
let Tlist_Show_One_File=0                    " ֻ��ʾ��ǰ�ļ���tags
let Tlist_Exit_OnlyWindow=1                  " ���Taglist���������һ���������˳�Vim
let Tlist_Use_Right_Window=1                 " ���Ҳര������ʾ
let Tlist_File_Fold_Auto_Close=1             " �Զ��۵�

