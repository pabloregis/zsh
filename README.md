# Zsh Config

Aliases e funcoes pessoais do Zsh, versionados para uso em mais de um ambiente.

## Estrutura

```text
~/.config/zsh/
|- aliases.zsh     # Atalhos de navegacao e ferramentas de linha de comando
|- functions.zsh   # Funcoes reutilizaveis
`- README.md
```

## Instalacao

```bash
git clone git@github.com:pabloregis/zsh.git ~/.config/zsh
```

Inclua os dois arquivos no `~/.zshrc`:

```zsh
source ~/.config/zsh/aliases.zsh
source ~/.config/zsh/functions.zsh
```

Recarregue a configuracao:

```bash
source ~/.zshrc
```

## Requisitos

O Zsh e necessario. Os atalhos abaixo so funcionam quando a respectiva ferramenta estiver instalada:

| Ferramenta | Alias ou funcao |
| --- | --- |
| `batcat` | `cat` |
| `fdfind` | `find` |
| `rg` | `grep` |
| `nvim` | `vim` |
| `npm` / `pnpm` | `n` / `p` |
| Docker Compose | `dc` |
| Claude Code | `cc` / `cdc` |
| Git | `zsh-pull` |
| Skillshare e Git | `skillpush` |
| WSL no Windows | `open` / `wsl-restart` |

## Aliases

| Alias | Comando |
| --- | --- |
| `..`, `...` | Navega um ou dois diretorios acima |
| `open` | Abre o diretorio atual no Explorer do Windows |
| `ls`, `ll` | Lista arquivos com cor; `ll` inclui detalhes e ocultos |
| `cat`, `find`, `grep` | Usam `batcat`, `fdfind` e `rg` |
| `vim` | Abre o Neovim |
| `n`, `p` | Executam `npm run` e `pnpm run` |
| `dc` | Executa `docker compose` |
| `zsh-pull` | Atualiza este repositorio com `git pull` |
| `cc` | Retoma a ultima sessao do Claude Code |
| `cdc` | Retoma Claude Code sem solicitar permissoes |
| `wsl-restart` | Encerra todas as distribuicoes WSL em execucao |

`cdc` usa `--dangerously-skip-permissions`; execute-o somente em repositorios confiaveis.

## Funcoes

| Funcao | Uso | Descricao |
| --- | --- | --- |
| `pack` | `pack caminho` | Cria `caminho.tar.gz`. |
| `unpack` | `unpack arquivo.tar.gz` | Extrai o arquivo no diretorio atual. |
| `mkcd` | `mkcd diretorio` | Cria o diretorio e entra nele. |
| `skillpush` | `skillpush` | Sincroniza skills, cria o commit em `~/.config/skillshare` e envia-o ao remoto. |

## Sincronizacao

Para publicar alteracoes neste repositorio:

```bash
cd ~/.config/zsh
git add aliases.zsh functions.zsh README.md
git commit -m "chore: update zsh config"
git push
```

Em outro computador, atualize e recarregue o shell:

```bash
zsh-pull
source ~/.zshrc
```

## Validacao

Verifique a sintaxe antes de recarregar os arquivos:

```bash
zsh -n ~/.config/zsh/aliases.zsh
zsh -n ~/.config/zsh/functions.zsh
```
