syntax enable                           " Enables syntax highlighing
set nocompatible                        " be iMproved, required
filetype off                            " required

"""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""

" Turn backup off, since most stuff is in SVN, git etc. anyway...
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set nowb                                " This is recommended by coc
set noswapfile
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			        " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set cursorline                          " Enable highlighting of the current line
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard+=unnamedplus              " Copy paste between vim and everything else


"""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""

set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=0                        " Always display the status line
set number                              " Line numbers
set numberwidth=4                       " Line number space

set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set showtabline=2                       " Always show tabs
set foldcolumn=2                        " Add a bit extra margin to the left

set backspace=eol,start,indent          " Configure backspace so it acts as it should act
set whichwrap+=<,>,h,l
set ignorecase                          " Ignore case when searching
set smartcase                           " When searching try to be smart about cases
set hlsearch                            " Highlight search results
set incsearch                           " Makes search act like search in modern browsers
set lazyredraw                          " Don't redraw while executing macros (good performance config)
set magic                               " For regular expressions turn magic on
set showmatch                           " Show matching brackets when text indicator is over them
set mat=2                               " How many tenths of a second to blink when matching brackets


" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

set ffs=unix,dos,mac                    " Use Unix as the standard file type

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

"""""""""""""""""""""""""""""""""""""""""
" => Status line
"""""""""""""""""""""""""""""""""""""""""

set noshowmode                          " We don't need to see things like -- INSERT -- anymore
" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

"""""""""""""""""""""""""""""""""""""""""
" => Shell section
"""""""""""""""""""""""""""""""""""""""""

if exists('$TMUX')
    if has('nvim')
      set termguicolors
    else
      set term=screen-256color
    endif
endif

"""""""""""""""""""""""""""""""""""""""""
" => Twig section
"""""""""""""""""""""""""""""""""""""""""

autocmd BufRead *.twigset syntax=htmlfiletype=html


"""""""""""""""""""""""""""""""""""""""""
" => Markdown
"""""""""""""""""""""""""""""""""""""""""

let vim_markdown_folding_disabled = 1

