# ── Navegação ──────────────────────────────────────────────────────────
alias ..='cd ..'
alias ...='cd ../..'
alias open='explorer.exe .'

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

# ── Claude Code ────────────────────────────────────────────────────────
alias cc='claude --continue'
alias cdc='claude --dangerously-skip-permissions --continue'

# ── WSL ────────────────────────────────────────────────────────────────
# Encerra todas as distribuições WSL em execução.
alias wsl-restart='wsl.exe --shutdown'
