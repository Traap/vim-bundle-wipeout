" {{{ bundle-wipeout.vim 
if exists('g:loaded_bundle_wipeout')
  finish
endif
let g:loaded_bundle_wipeout=1
" -------------------------------------------------------------------------- }}}
" {{{ Wipeout all buffers.
function! Wipeout()
  if exists("g:opt_diminactivewin")
    let g:opt_diminactivewin = 0
  endif

  if exists("g:resume_toggle")
    let g:resume_toggle = 0
  endif

  if g:vide_is_on
    :VideToggleIde
  endif
  silent execute '%bwipeout!'
endfun
" -------------------------------------------------------------------------- }}}
