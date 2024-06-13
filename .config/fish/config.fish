if status is-interactive
    starship init fish | source
	# Commands to run in interactive sessions can go here
  echo ""
  neofetch
  #set -U fish_greeting
end
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
