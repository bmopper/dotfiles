lua require('plugins')

" Vim

" tabs
set tabstop=2
set shiftwidth=2
set expandtab

let mapleader = ","

" conceal level
set conceallevel=1

" line numbers
set number

" Gruvbox-material

if has ('termguicolors')
  set termguicolors
endif

let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_transparent_background = 1
let g:gruvbox_material_ui_contrast = 'high'

colorscheme gruvbox-material


" VimTex

" This is necessary for VimTeX to load properly. The "indent" is optional.
" Note that most plugin managers will do this automatically.
filetype plugin indent on

" This enables Vim's and neovim's syntax-related features. Without this, some
" VimTeX features will not work (see ":help vimtex-requirements" for more
" info).
syntax enable

" Viewer options: One may configure the viewer either by specifying a built-in
" viewer method:
let g:vimtex_view_method = 'zathura'

" Or with a generic interface:
let g:vimtex_view_general_viewer = 'okular'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'

let g:vimtex_syntax_enabled = 2

let g:vimtex_syntax_conceal = {
	\ 'accents': 1,
	\ 'ligatures': 1,
	\ 'cites': 1,
	\ 'fancy': 1,
	\ 'spacing': 1,
	\ 'greek': 1,
	\ 'math_bounds': 1,
	\ 'math_delimiters': 1,
	\ 'math_fracs': 1,
	\ 'math_super_sub': 1,
	\ 'math_symbols': 1,
	\ 'sections': 0,
	\ 'styles': 1,
	\}

let g:vimtex_syntax_conceal_disable = 0

" VimTeX uses latexmk as the default compiler backend. If you use it, which is
" strongly recommended, you probably don't need to configure anything. If you
" want another compiler backend, you can change it as follows. The list of
" supported backends and further explanation is provided in the documentation,
" see ":help vimtex-compiler".
let g:vimtex_compiler_method = 'latexmk'

" Most VimTeX mappings rely on localleader and this can be changed with the
" following line. The default is usually fine and is the symbol "\".
let maplocalleader = ","

let g:tex_conceal = "abdmg"

let g:tex_flavor='latex'

let g:vimtex_quickfix_mode = 0

