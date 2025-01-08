source "$HOME/.atuin/bin/env.fish" || curl --proto '=https' --tlsv1.2 -LsSf https://setup.atuin.sh | sh && source "$HOME/.atuin/bin/env.fish" 

if status is-interactive
	atuin init fish | source
end
.
