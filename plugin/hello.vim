" File:        hello-vim
" Description: Vim plugin for saying Hello,Vim!
" Author:      Yasuhiro Asaka <y.grauwoelfchen@gmail.com>
" Last Change: 2012 Aug 11
" WebPage:     http://github.com/grauwoelfchen/hello-vim
" License:     BSD
" Version:     0.1

scriptencoding utf-8

if exists('g:loaded_hello_vim')
  finish
endif
let g:loaded_hello_vim = 1

if !exists('g:hello_say_words')
  let g:hello_say_words = 'Hello,Vim!'
end
if !exists('g:hello_say_voice')
  let g:hello_say_voice = 'Alex'
end

function! s:has_command(command)
  return executable(a:command)
endfunction

function! s:Say()
  echo g:hello_say_words
  if s:has_command('espeak')
    call system("espeak --stdout '".g:hello_say_words."' | aplay >/dev/null 2>&1")
  elseif s:has_command('say')
    call system("say -v ".g:hello_say_voice." '".g:hello_say_words."' >/dev/null 2>&1")
  endif
endfunction

command! Say call <SID>Say()
exe "nnoremap <silent> <buffer> <leader><leader> :call <SID>Say()<cr>"
