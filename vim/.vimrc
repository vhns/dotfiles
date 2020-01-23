set relativenumber
"Warning: I use this myself but I don't recommend it
set nobackup
syntax on
"Removes trailling whitespaces from text automagically
autocmd BufWritePre * :%s/\s\+$//e
"Shows a red square IF trailling whitespace still exists
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
"Enables filetype support and pllugin as well
filetype plugin on
"Loads auto indentation for filetype
filetype indent on
"https://brianbuccola.com/line-breaks-in-mutt-and-vim/
"Add format option 'w' to add trailing white space, indicating that paragraph
"continues on next line. This is to be used with mutt's 'text_flowed' option.
augroup mail_trailing_whitespace " {
	autocmd!
        autocmd FileType mail setlocal formatoptions+=w textwidth=80
augroup END " }
