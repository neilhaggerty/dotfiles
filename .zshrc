for file in ~/Resources/zsh_exe/*; do
  if [[ -f "$file" && "$file" == *.zsh ]]; then
    source "$file"
  fi
done
