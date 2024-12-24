alias ls="eza --icons"
alias l="ll -a"
alias ff="fastfetch"
alias cat="bat"

fzf --fish | source
set fish_greeting

function starship_transient_prompt_func
  starship module character
end

if status is-interactive
  fastfetch
  starship init fish | source
  enable_transience
end
