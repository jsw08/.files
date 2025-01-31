if status is-interactive
	source "$HOME/.atuin/bin/env.fish" \
		|| echo $(curl --proto '=https' --tlsv1.2 -LsSf https://setup.atuin.sh | sh && source "$HOME/.atuin/bin/env.fish" \
		|| echo -e "\033[0;31mUnable to setup atuin. Do you have the proper permissions and a network connection?" && exit 1)
	atuin init fish | source
end
.
