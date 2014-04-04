""""""""""""""编辑文件"""""""""""""'""""""""""""
""显示行号
set nu

"高亮代码
syntax on 

"状态行显示当前的行号列号：
set ruler

"在状态栏显示正在输入的命令
set showcmd

"查找文本高亮
set hls

"设置编码自动识别,中文显示 
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,gbk,cp936,gb18030,gb2312,big5,euc-jp,euc-kr,latin1
set termencoding=utf-8
set fileformats=unix
set encoding=utf-8

"不备份文件总是不太好的。你可以在 vimrc 中加入,使它生成的备份都放在 ~/tmp 目录下，就不会挡你的视线了，必要时也可以翻出来。
set backup
set writebackup
set backupdir=~/.tmp/


""“”“”“”“”“”语言编程“”“”“”“”“”“”“”“”“”“”“”“”“”“”“”“”“”“”
"设置（软）制表符宽度为4：
set tabstop=4
set softtabstop=4

"设置缩进的空格数为4
set shiftwidth=4

"自动识别文件类型 根据文件类型启用缩进
filetype indent plugin on
set autoindent

"设置 使用 C/C++ 语言的自动缩进方式：
set cindent

"自动括号补全
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {<ESC>o    <ESC>o}<ESC>ka
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
":inoremap < <><ESC>i
":inoremap > <c-r>=ClosePair('>')<CR>
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i
 
function ClosePair(char) 
if getline('.')[col('.') - 1] == a:char
return "\<Right>"
else 
return a:char
endif 
endfunction




