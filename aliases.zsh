# ── Navegação ──────────────────────────────────────────────────────────
alias open='explorer.exe .'

# Disponibiliza z e zi quando zoxide estiver instalado; usa z em .. e ...
# para que a navegação também alimente a frequência do zoxide.
if (( $+commands[zoxide] )); then
    eval "$(zoxide init zsh)"
    alias ..='z ..'
    alias ...='z ../..'
else
    alias ..='cd ..'
    alias ...='cd ../..'
fi

# ── Arquivos e busca ───────────────────────────────────────────────────
alias ls='ls --color=auto'
alias ll='ls -lah'

if (( $+commands[batcat] )); then
    alias cat='batcat'
fi
if (( $+commands[fdfind] )); then
    alias find='fdfind'
fi
if (( $+commands[rg] )); then
    alias grep='rg'
fi

# ── Editor ─────────────────────────────────────────────────────────────
if (( $+commands[nvim] )); then
    alias vim='nvim'
fi

# ── Node.js ────────────────────────────────────────────────────────────
alias n='npm run'
alias dev='npm run dev'
alias test='npm run test:dev'
alias ni='npm install'
alias p='pnpm run'
alias pi='pnpm install'
alias devp='pnpm run dev'

# ── Docker ─────────────────────────────────────────────────────────────
alias dc='docker compose'

# ── Git ────────────────────────────────────────────────────────────────
alias zsh-pull='git -C ~/.config/zsh pull'
alias gs='git fetch && git status'
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
