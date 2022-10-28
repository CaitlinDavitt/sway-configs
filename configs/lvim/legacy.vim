set nocompatible
filetype plugin on       " may already be in your .vimrc

augroup lexical
  autocmd!
  autocmd FileType markdown,mkd call lexical#init()
  autocmd FileType textile call lexical#init()
  autocmd FileType text call lexical#init({ 'spell': 0 })
augroup END

let g:lexical#spell = 1         " 0=disabled, 1=enabled
let g:lexical#spelllang = ['en_us',]
let g:lexical#spellfile = ['~/.config/lvim/thesaurus/words.txt',]
let g:lexiacl#spell_key = '<leader> s'

:set rtp+=/home/caitlin/.opam/default/share/merlin/vim

