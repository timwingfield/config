runtime general_config.vim
runtime ui_config.vim
runtime plugin_config.vim
runtime key_mappings.vim

" attempt to load a custom config for the currently logged in user
runtime! custom_config/`whoami`.vim
:filetype plugin on
:abbr hte the


