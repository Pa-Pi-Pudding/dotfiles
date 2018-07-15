if g:dein#_cache_version != 100 | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/Users/kyota/.vimrc', '/Users/kyota/.vim/dein/userconfig/plugins.toml', '/Users/kyota/.vim/dein/userconfig/plugins_lazy.toml'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/Users/kyota/.vim/dein'
let g:dein#_runtime_path = '/Users/kyota/.vim/dein/.cache/.vimrc/.dein'
let g:dein#_cache_path = '/Users/kyota/.vim/dein/.cache/.vimrc'
let &runtimepath = '/Users/kyota/.vim/dein/repos/github.com/Shougo/dein.vim/,/Users/kyota/.vim,/usr/local/share/vim/vimfiles,/Users/kyota/.vim/dein/repos/github.com/Shougo/dein.vim,/Users/kyota/.vim/dein/repos/github.com/Shougo/context_filetype.vim,/Users/kyota/.vim/dein/.cache/.vimrc/.dein,/usr/local/share/vim/vim80,/Users/kyota/.vim/dein/.cache/.vimrc/.dein/after,/usr/local/share/vim/vim80/pack/dist/opt/matchit,/usr/local/share/vim/vimfiles/after,/Users/kyota/.vim/after'
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = { 'mode': 'active', 'active_filetypes': [ 'ruby', 'javascript','coffee', 'scss', 'html', 'haml', 'slim', 'sh', 'spec', 'vim', 'zsh', 'sass', 'eruby'] }
let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_coffee_checkers = ['coffeelint']
let g:syntastic_scss_checkers = ['scss_lint']
let g:syntastic_ruby_checkers = ['rubocop']
let g:syntastic_error_symbol='✗'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_style_warning_symbol = '⚠'
 let g:indentLine_color_term = 103
 
autocmd dein-events InsertCharPre * call dein#autoload#_on_event("InsertCharPre", ['neosnippet.vim'])
