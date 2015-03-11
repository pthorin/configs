source ~/dotfiles/icetan-fork:dotfiles/vim/.vimrc

let g:solarized_contrast="high"
let g:solarized_termtrans=1
syntax enable
set hls ic is
set shiftwidth=4
set softtabstop=4
set tabstop=4
" set number


" execute pathogen#infect()

let g:syntastic_mode_map = { "mode": "active", "active_filetypes": [], "passive_filetypes": [] }

" When editing a file, always jump to the last cursor position
 au BufReadPost *
       \ if ! exists("g:leave_my_cursor_position_alone") |
       \     if line("'\"") > 0 && line ("'\"") <= line("$") |
       \         exe "normal g'\"" |
       \     endif |
       \ endif

nnoremap <leader>m :silent %w !dr-markdown\|xargs open<CR>

if has("gui_running")
  set guioptions=egmrt                " Hide toolbar in MacVim
  set guifont=M+_1mn:h14
endif


