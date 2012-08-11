# hello-vim

Hello,world! plugin

## Usage

```
:call Say() # => Hello,Vim!
```

```
g:hello_say_words = 'Hello,Vim!'
g:hello_say_voice = 'Alex' " for OS X's say
nnoremap <silent> <buffer> <leader><leader> :call Say()<cr>
```

if you have `espeak` or `say` command, then hello-vim talks text with it :-)
