# ── Navegação ──────────────────────────────────────────────────────────
alias ..='cd ..'
alias ...='cd ../..'
alias open='explorer.exe .'

# Disponibiliza z e zi quando zoxide estiver instalado.
if (( $+commands[zoxide] )); then
    eval "$(zoxide init zsh)"
fi

# ── Arquivos e busca ───────────────────────────────────────────────────
alias ls='ls --color=auto'
alias ll='ls -lah'
alias cat='batcat'
alias find='fdfind'
alias grep='rg'

# ── Editor ─────────────────────────────────────────────────────────────
alias vim='nvim'

# ── Node.js ────────────────────────────────────────────────────────────
alias n='npm run'
alias p='pnpm run'

# ── Docker ─────────────────────────────────────────────────────────────
alias dc='docker compose'

# ── Git ────────────────────────────────────────────────────────────────
alias zsh-pull='git -C ~/.config/zsh pull'
alias gs='git status'
alias gd='git diff'
alias gds='git diff --staged'
alias glog='git log --oneline --graph --decorate --all'

# ── Utilidades ─────────────────────────────────────────────────────────
alias reload='source ~/.zshrc'
alias zshrc='code ~/.zshrc'
alias dus='du -sh'
alias dfh='df -h'

# ── Claude Code ────────────────────────────────────────────────────────
alias cc='claude --continue'
alias cdc='claude --dangerously-skip-permissions --continue'

# ── WSL ────────────────────────────────────────────────────────────────
# Encerra todas as distribuições WSL em execução.
alias wsl-restart='wsl.exe --shutdown'
