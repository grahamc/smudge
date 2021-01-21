#!/bin/sh

scratch=$(mktemp -d -t tmp.XXXXXXXXXX)
function finish {
  rm -rf "$scratch"
}
trap finish EXIT

cat > "$scratch/file.py"
black "$scratch/file.py" >&2
cat "$scratch/file.py"

