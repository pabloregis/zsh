
zip() {
  tar -czvf "$1.tar.gz" "$1"
}

unzip() {
  tar -xzvf "$1"
}

mkcd() {
  mkdir -p "$1" && cd "$1"
}