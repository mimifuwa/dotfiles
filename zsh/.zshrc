# ---
# p10k config
# ---
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ---
# zinit config
# ---
# Created by newuser for 5.9

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk
source ~/.config/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# zinit ice wait'0'; zinit light zsh-users/zsh-completions
autoload -Uz compinit && compinit

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*:default' menu select=1 

# ---
# zinit plugins
# ---
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions

# ---
# history
# ---
export HISTFILE=${HOME}/.config/zsh/.zsh_history
export HISTSIZE=1000
export SAVEHIST=100000
setopt hist_ignore_dups

setopt EXTENDED_HISTORY

setopt AUTO_CD
setopt AUTO_PARAM_KEYS

# ---
# grc config
# ---
[[ -s "/usr/local/etc/grc.zsh" ]] && source /usr/local/etc/grc.zsh

# ---
# alias
# ---
alias sudo="doas"

alias vim=nvim
alias v=nvim

alias zshrc='v ~/.zshrc'

alias ls='exa --icons'
alias ll='exa -l --icons'
alias la='exa -a --icons'
alias lla='exa -la --icons'
alias lal='exa -la --icons'

alias nw='sudo systemctl restart NetworkManager'

alias mips='spim -file'

alias dev="cd ~/Documents/develop"

alias annet="~/.windows/annet.sh"

# for C lang alias
alias a=./a.out

alias ssh="TERM=xterm /usr/bin/ssh"

alias "?"="ghcs"

# volta path
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
export PATH="$VOLTA_HOME/bin/yarn:$PATH"
export PATH="$VOLTA_HOME/bin:$PATH"

# proto path
export PROTO_HOME="$HOME/.proto"
export PATH="$PROTO_HOME:$PROTO_HOME/shims:$PROTO_HOME/bin:$PATH"

# perl path
PATH="$HOME/perl5/bin${PATH:+:${PATH}}"; export PATH;

PERL5LIB="$HOME/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="$HOME/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"$HOME/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=$HOME/perl5"; export PERL_MM_OPT;

# pyenv/virtualenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init --path)"
fi

# fzf
export FZF_LEGACY_KEYBINDINGS=0
eval "$(gh copilot alias -- zsh)"

# verylup
export PATH="$HOME/.cargo/bin:$PATH"
