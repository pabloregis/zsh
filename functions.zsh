# ── Arquivos e diretórios ──────────────────────────────────────────────

# Compacta uma pasta ou arquivo em .tar.gz.
pack() {
    tar -czvf "$1.tar.gz" "$1"
}

# Extrai um arquivo .tar.gz no diretório atual.
unpack() {
    tar -xzvf "$1"
}

# Cria um diretório e entra nele.
mkcd() {
    mkdir -p "$1" && cd "$1"
}


# ── Skillshare ─────────────────────────────────────────────────────────

# Sincroniza as skills, cria o commit e envia as alterações ao repositório.
# Usa uma subshell para manter o diretório atual após finalizar.
skillpush() {
    (
        skillshare sync &&
        cd ~/.config/skillshare &&
        skillshare commit &&
        git push
    )
}