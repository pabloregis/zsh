# Zsh Config

Configurações pessoais do Zsh para manter aliases e functions sincronizados entre diferentes ambientes.

## Estrutura

```text
~/.config/zsh/
├── aliases.zsh
└── functions.zsh
```

## Instalação

Clone o repositório:

```bash
git clone git@github.com:pabloregis/zsh.git ~/.config/zsh
```

Adicione ao `~/.zshrc`:

```zsh
source ~/.config/zsh/aliases.zsh
source ~/.config/zsh/functions.zsh
```

Depois recarregue o Zsh:

```bash
source ~/.zshrc
```

## Atualizar configurações

Após alterar aliases ou functions:

```bash
cd ~/.config/zsh

git add .
git commit -m "chore: update zsh config"
git push
```

## Sincronizar em outro computador

Para baixar as alterações mais recentes:

```bash
cd ~/.config/zsh
git pull
```

Depois:

```bash
source ~/.zshrc
```

## Exemplo de alias

```zsh
alias ll='ls -lah'
alias dc='docker compose'
alias ..='cd ..'
alias ...='cd ../..'
```

## Exemplo de function

```zsh
mkcd() {
  mkdir -p "$1" && cd "$1"
}
```

Uso:

```bash
mkcd meu-projeto
```

Isso cria a pasta e entra nela automaticamente.

## Repositório

```text
git@github.com:pabloregis/zsh.git
```
