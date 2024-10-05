"WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'  "Change this path according to your mount point
if executable(s:clip)
  augroup WSLYank
    autocmd!
    autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
  augroup END
endif

set nocompatible " Desabilitar a compatibilidade com vi, que pode causar problemas inesperados.
set number " Adicionar numeração ao lado esquerdo de cada linha.
set relativenumber
set tabstop=2
set shiftwidth=2
set autoindent " Ativar identação automática
set incsearch
set wildmenu
set laststatus=2
set mouse=a
set nowrap
set smartindent " Ativa identação inteligente, o Vim tentará advinhar a melhor identação para o código quando efetuar a quebra de linha
set history=1000 " Por padrão o Vim amarzena os últimos 50 comandos utilizados no histórico. Alterei para 1000
syntax on " Ativar sintax colorida
filetype on " Habilitar a detecção do tipo de arquivo. O Vim será capaz de tentar detectar automaticamente o tipo de arquivo.
filetype plugin on " Habilitar plug-ins e carregar o plug-in correspondente ao tipo de arquivo detectado.
filetype indent on " Carregar um arquivo de indentação correspondente ao tipo de arquivo detectado.
syntax on " Ativar o realce de sintaxe.
set cursorline " Destacar a linha do cursor horizontalmente, diretamente abaixo dele.

" https://github.com/junegunn/vim-plug

call plug#begin('~/.vim/plugged') 

Plug 'vim-airline/vim-airline'
map <C-i> :IndentLinesToggle<cr>
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
map <C-n> :NERDTreeToggle<cr>
set encoding=utf8
Plug 'ryanoasis/vim-devicons'
Plug 'Yggdroot/indentLine'

call plug#end()
