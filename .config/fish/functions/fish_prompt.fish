## Left Prompt
function fish_prompt
	# Set the annoying greeting to empty
	set fish_greeting
	set -l last_status $status
	# Show the current working directory
	set_color black
	if test (id -u) -eq 0
		set_color --background=yellow
	else
		set_color --background=magenta
	end
	echo -n ' '
	echo -n (prompt_pwd)
	echo -n ' '
	set_color normal
	echo -n ' '
end

## Window title
function fish_title
	echo -n 'aquarium '
	prompt_pwd
end

## Coloring
set fish_color_autosuggestion brblack
set fish_color_command normal
set fish_color_comment black
set fish_color_cwd blue
set fish_color_cwd_root red
set fish_color_end magenta
set fish_color_error yellow
set fish_color_escape cyan
set fish_color_history_current cyan
set fish_color_host normal
set fish_color_match blue
set fish_color_normal normal
set fish_color_operator cyan
set fish_color_param blue
set fish_color_quote green
set fish_color_redirection blue
set fish_color_search_match --background=black
set fish_color_selection blue
set fish_color_status red
set fish_color_user red
set fish_pager_color_completion blue
set fish_pager_color_description yellow
set fish_pager_color_prefix cyan
set fish_pager_color_progress cyan


## Keybinding
set fish_key_bindings fish_default_key_bindings
