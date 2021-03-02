"Remap vim leader key

  let mapleader=","

"Skeletons

  nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>4jcit
  nnoremap ,bash :-1read $HOME/.vim/.skeleton.bash<CR>
  nnoremap ,pyparse :-1read $HOME/.vim/.skeleton.python-parse<CR>

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

"Open link under cursor

  "Use torbrowser as a default browser

    let g:openbrowser_browser_commands = [
    \   {'name': 'tor',
    \    'args': '~/.local/share/torbrowser/tbb/x86_64/tor-browser_en-US/Browser/start-tor-browser --allow-remote {uri}'}
    \]

    let g:netrw_nogx = 1 " disable netrw's gx mapping.
    nmap gx <Plug>(openbrowser-smart-search)
    vmap gx <Plug>(openbrowser-smart-search)

"Vim Plug

  call plug#begin('~/.vim/plugged')

  Plug 'scrooloose/nerdtree'
  Plug 'rhysd/vim-clang-format'
  Plug 'tyru/open-browser.vim'
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

"Clipboard
  vmap <C-c> y: call system("xclip -i -selection clipboard", getreg("\""))<CR>

"Ctrlp

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"Marks

nnoremap <C-m> :marks<CR>


