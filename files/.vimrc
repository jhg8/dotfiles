"Remap vim leader key

  let mapleader=","

"Prevent annoying markdown underscore highlighting
"(disables all error highlightings for markdown)

  hi link markdownError Normal

"Indent with 2 spaces

  set expandtab
  set shiftwidth=2
  set softtabstop=2

autocmd BufRead *.html,<&faf;HTML>
    \ set expandtab! |
    \ set softtabstop& 

"Display line numbers
  set number relativenumber

"Easily navigate tabs

  nnoremap J gT
  nnoremap K gt

"Easily navigate long lines

  nnoremap j gj
  nnoremap k gk

"Vim Plug

  call plug#begin('~/.vim/plugged')

  Plug 'scrooloose/nerdtree'
  Plug 'rhysd/vim-clang-format'
  Plug 'kana/vim-textobj-user'
  Plug 'yuttie/comfortable-motion.vim'
  Plug 'tpope/vim-surround'
  Plug 'junegunn/goyo.vim'
  Plug 'severin-lemaignan/vim-minimap'
  Plug 'lucapette/vim-textobj-underscore'
  Plug 'bkad/CamelCaseMotion'
  Plug 'rhysd/conflict-marker.vim'
  Plug 'ctrlpvim/ctrlp.vim'

  call plug#end()

"comfortable-motion config


let g:comfortable_motion_no_default_key_mappings = 1
let g:comfortable_motion_impulse_multiplier = 2.6  " Feel free to increase/decrease this value.
let g:comfortable_motion_friction = 1000.0
nnoremap <silent> <C-d> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * 2)<CR>
nnoremap <silent> <C-u> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * -2)<CR>
nnoremap <silent> <C-f> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * 4)<CR>
nnoremap <silent> <C-b> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * -4)<CR>

"CamelCaseMotion config

let g:camelcasemotion_key = '<leader>'

"Custom text objects using text obj

  call textobj#user#plugin('url', {
  \   'url': {
  \     'pattern': '\(http\|https\|ftp\)://[a-zA-Z0-9][a-zA-Z0-9_-]*\(\.[a-zA-Z0-9][a-zA-Z0-9_-]*\)*\(:\d\+\)\?\(/[a-zA-Z0-9_/.\-+%?&=;@$,!''*~]*\)\?\(#[a-zA-Z0-9_/.\-+%#?&=;@$,!''*~]*\)\?',
  \     'select': ['au', 'iu'],
  \   },
  \ })
  call textobj#user#plugin('file', {
  \   'file': {
  \     'pattern': '\f\+',
  \     'select': ['af', 'if'],
  \   },
  \ })

"Ctrlp

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"Marks

nnoremap <C-m> :marks<CR>


