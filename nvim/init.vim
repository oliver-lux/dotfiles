" Auto install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
	\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	"autocmd VimEnter * PlugInstall
	"autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

set tabstop=4 shiftwidth=4 expandtab
set guicursor=""

call plug#begin('~/nvim/plugged')
	" Sneak
	Plug 'justinmk/vim-sneak'
	" Have the file system follow you around
        Plug 'airblade/vim-rooter'
        " Footer
	Plug 'itchyny/lightline.vim'
	" Git Support
	Plug 'tpope/vim-fugitive'
	" Sidebar Explorer
	Plug 'scrooloose/nerdtree'
	" Search & Replace Plugin
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	" Better Syntax Support"
	Plug 'sheerun/vim-polyglot'
	" Theme
	Plug 'joshdick/onedark.vim'
call plug#end()

" Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
if (has("nvim"))
	let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
	set termguicolors
endif

" Set Theme
colorscheme onedark
let g:lightline = { 'colorscheme': 'onedark' }

source $HOME/.dotfiles/nvim/plug-config/fzf.vim

" Auto install missing plugins
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
