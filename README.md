# hello-vim

Hello,world! plugin

## Usage

```
:Say # => Hello,Vim!
```

## Setup

You can change words voice in .vimrc

```
" optional
g:hello_say_words = 'Grüezi,Vim!'
g:hello_say_voice = 'Fred' " for OS X's say

" default keymap
nnoremap <silent> <buffer> <leader><leader> :call <SID>Say()<cr>
```

If you have `espeak` or `say` command, then hello-vim talks text with it :-)
