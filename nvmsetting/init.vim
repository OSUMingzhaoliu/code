lua require('core.init')

set clipboard^=unnamed,unnamedplus

if has('unix')
	set thesaurus+=/usr/share/dict/words
endif

syntax enable
syntax on

"-------------vim keymap setting---------------
imap jk <ESC>

nmap <space> :

" CTRL-X are Cut
vnoremap <C-X> "+x

" CTRL-C are Copy
vnoremap <C-C> "+y

" CTRL-V are paste
vmap     <C-V> c<ESC>"+p
imap     <C-V> <C-r><C-o>+
map      <C-V> "+gP
inoremap <C-V> "+gP
cmap     <C-V> <C-r>+

" Use CTRL-Q to do what CTRL-V used to do
" noremap <C-Q>        <C-V>

" CTRL-Z is Undo; not in cmdline though
noremap <C-Z> u
inoremap <C-Z> <C-O>u

" CTRL-A is Select all
noremap  <C-A> gggH<C-O>G
inoremap <C-A> <C-O>gg<C-O>gH<C-O>G
cnoremap <C-A> <C-C>gggH<C-O>G
onoremap <C-A> <C-C>gggH<C-O>G
snoremap <C-A> <C-C>gggH<C-O>G
xnoremap <C-A> <C-C>ggVG

" Use CTRL-S for saving, also in Insert mode
noremap  <C-S>        :update<CR><ESC>
vnoremap <C-S>        <C-C>:update<CR><ESC>
inoremap <C-S>        <C-O>:update<CR><ESC>

" F3 is Next window
noremap  <F3> <C-W>v
inoremap <F3> <C-O><C-W>v
cnoremap <F3> <C-C><C-W>v
onoremap <F3> <C-C><C-W>v

" F5 is Close window
noremap  <F5> <C-W>c
inoremap <F5> <C-O><C-W>c
cnoremap <F5> <C-C><C-W>c
onoremap <F5> <C-C><C-W>c

noremap  <F4> <C-W>w
inoremap <F4> <C-O><C-W>w
cnoremap <F4> <C-C><C-W>w
onoremap <F4> <C-C><C-W>w




