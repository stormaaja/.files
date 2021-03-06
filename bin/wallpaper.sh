#!/usr/bin/env bash

shopt -s nullglob
cd "$@"

while true; do
  files=()
  for i in *.jpg *.png; do
    [[ -f $i ]] && files+=("$i")
  done
  range=${#files[@]}

  ((range)) && feh --bg-scale "${files[RANDOM % range]}"

  sleep 60s
done
