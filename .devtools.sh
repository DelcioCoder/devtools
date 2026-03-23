# =========================
# UTILIDADES
# =========================

clip() {
  cat "$1" | xclip -selection clipboard
}

stb() {
  cd "$HOME/Documentos/projectos/sentaurai-backend"
}

# =========================
# DOCKER LOGS
# =========================

dlogs() {
  if [ -z "$1" ]; then
    echo "Uso: dlogs <serviço>"
    return 1
  fi

  docker compose logs -f "$1"
}

# =========================
# AUTOCOMPLETE
# =========================

_dlogs_completion() {
  local cur services
  cur="${COMP_WORDS[1]}"

  services=$(docker compose config --services 2>/dev/null)

  COMPREPLY=( $(compgen -W "$services" -- "$cur") )
}

complete -F _dlogs_completion dlogs
