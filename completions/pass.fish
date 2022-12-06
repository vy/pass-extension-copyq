source $__fish_data_dir/vendor_completions.d/pass.fish
complete -c pass -f -n '__fish_pass_needs_command' -a copyq -d 'Command: put password in clipboard with copyq'
complete -c pass -f -n '__fish_pass_uses_command copyq' -a '(__fish_pass_print_entries)'
