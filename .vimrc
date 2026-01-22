set number                 " Show line numbers

set expandtab              " Convert tabs to spaces
set tabstop=4              " Width of a tab character
set shiftwidth=4           " Width of indentation
set softtabstop=4          " Spaces for a tab in insert mode
set autoindent             " Keep indentation
set smartindent            " Smart indentation

set hlsearch               " Highlight search results
set incsearch              " Incremental search
set ignorecase             " Ignore case in search
set smartcase              " Unless uppercase is present

" To disable highlighting after a search:
map <F4> :nohl<CR>

" Set a theme
colorscheme industry

" For YAML files
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab indentkeys-=0# indentkeys-=<:>

" Activate syntaxic coloration
syntax on
