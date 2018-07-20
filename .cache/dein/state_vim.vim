if g:dein#_cache_version !=# 100 || g:dein#_init_runtimepath !=# '/Users/kyota/.cache/dein/repos/github.com/Shougo/dein.vim,/Users/kyota/.vim,/usr/local/share/vim/vimfiles,/usr/local/share/vim/vim81,/usr/local/share/vim/vimfiles/after,/Users/kyota/.vim/after' | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/Users/kyota/.vimrc', '/Users/kyota/.vim/rc/dein.toml', '/Users/kyota/.vim/rc/dein_lazy.toml', '/Users/kyota/.vim/rc/dein_neo.toml', '/Users/kyota/.vim/rc/dein_python.toml', '/Users/kyota/.vim/rc/dein_go.toml', '/Users/kyota/.vim/rc/dein_frontend.toml'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/Users/kyota/.cache/dein'
let g:dein#_runtime_path = '/Users/kyota/.cache/dein/.cache/.vimrc/.dein'
let g:dein#_cache_path = '/Users/kyota/.cache/dein/.cache/.vimrc'
let &runtimepath = '/Users/kyota/.cache/dein/repos/github.com/Shougo/dein.vim,/Users/kyota/.vim,/usr/local/share/vim/vimfiles,/Users/kyota/.cache/dein/.cache/.vimrc/.dein,/usr/local/share/vim/vim81,/Users/kyota/.cache/dein/.cache/.vimrc/.dein/after,/usr/local/share/vim/vimfiles/after,/Users/kyota/.vim/after'
silent! command -complete=customlist,dein#autoload#_dummy_complete -bang -bar -range -nargs=* Unite call dein#autoload#_on_cmd('Unite', 'unite.vim', <q-args>,  expand('<bang>'), expand('<line1>'), expand('<line2>'))
silent! command -complete=customlist,dein#autoload#_dummy_complete -bang -bar -range -nargs=* EasyAlign call dein#autoload#_on_cmd('EasyAlign', 'vim-easy-align', <q-args>,  expand('<bang>'), expand('<line1>'), expand('<line2>'))
    source ~/.vim/rc/plugins/openbrowser.rc.vim
    nmap ga <Plug>(EasyAlign)
    xmap ga <Plug>(EasyAlign)
    nnoremap [unite] <Nop>
    nmap <Space>u [unite]
    nnoremap <silent> [unite]<C-p> :<C-u>Unite<Space>file_rec/async:!<CR>
    nnoremap <silent> [unite]<C-b> :<C-u>Unite buffer<CR>
    nnoremap <silent> [unite]<C-g> :<C-u>Unite<Space>grep -buffer-name=search -auto-preview -no-quit -no-empty -resume<CR>
    nnoremap <silent> [unite]<C-r> :<C-u>Unite file_mru buffer<CR>
    nnoremap <silent> [unite]<C-y> :<C-u>Unite history/yank<CR>
    source ~/.vim/rc/plugins/caw.rc.vim
    let g:gista#client#default_username = 'lighttiger2505'
    nnoremap <silent> <Leader>w :FixWhitespace<CR>
    nnoremap [figitive] <Nop>
    nnoremap <Leader>g [figitive]
    nnoremap <silent> [figitive]s :<C-u>Gstatus<CR>
    nnoremap <silent> [figitive]d :<C-u>Gdiff<CR>
    nnoremap <silent> [figitive]b :<C-u>Gblame<CR>
    nnoremap <Space>g :<C-u>TagbarToggle<CR>
   au MyAutoCmd VimEnter * nested colorscheme wombat256mod
    nnoremap <Space>f :<C-u>NERDTreeToggle<CR>
    let NERDTreeIgnore = ['\.pyc$']
    set background=dark
autocmd dein-events InsertEnter * call dein#autoload#_on_event("InsertEnter", ['neocomplete.vim'])
