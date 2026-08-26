# ── Arquivos e diretórios ──────────────────────────────────────────────

# Compacta uma pasta ou arquivo em .tar.gz.
pack() {
    if [[ -z "$1" ]]; then
        print -u2 'Uso: pack <caminho>'
        return 1
    fi

    tar -czvf "$1.tar.gz" "$1"
}

# Extrai um arquivo .tar.gz no diretório atual.
unpack() {
    if [[ -z "$1" ]]; then
        print -u2 'Uso: unpack <arquivo.tar.gz>'
        return 1
    fi

    tar -xzvf "$1"
}

# Cria um diretório e entra nele.
mkcd() {
    if [[ -z "$1" ]]; then
        print -u2 'Uso: mkcd <diretorio>'
        return 1
    fi

    mkdir -p "$1" || return 1

    if (( $+functions[z] )); then
        z "$1"
    else
        cd "$1"
    fi
}

backup() {
    if [[ -z "$1" ]]; then
        print -u2 'Uso: backup <caminho>'
        return 1
    fi

    cp -a "$1" "$1.bak-$(date +%Y%m%d-%H%M%S)"
}

biggest() {
    du -ah . | sort -rh | head -n "${1:-20}"
}

genpass() {
    openssl rand -base64 "${1:-24}"
}

port() {
    if [[ -z "$1" ]]; then
        print -u2 'Uso: port <numero>'
        return 1
    fi

    lsof -nP -iTCP:"$1" -sTCP:LISTEN
}


# ── Skillshare ─────────────────────────────────────────────────────────

# Sincroniza as skills, cria o commit e envia as alterações ao repositório.
# Usa uma subshell para manter o diretório atual após finalizar.
skillpush() {
    (
        skillshare sync &&
        cd ~/.config/skillshare/skills &&
        skillshare commit &&
        git push
    )
}

# ── Antigravity ─────────────────────────────────────────────────────────
antigravity() {
  ~/.local/opt/antigravity/antigravity >/dev/null 2>&1 &!
}