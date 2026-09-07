#!/bin/bash
#############################
#Problem: Write a script `backup_target.sh` that takes 3 parameters: `SRC_DIR` (mandatory), `DEST_DIR` (optional, default `/backup/default`), and `COMPRESSION` (optional, default `gzip`). If `SRC_DIR` is omitted, throw an error using `${1:?Error message}` syntax.
#############################


SRC_DIR="${1:?error:value required}"
DEST_DIR="${2:-'/backup/default'}"
COMPRESSION="${3:-'gzip'}"
echo "SRC: $SRC_DIR"
echo "destination : $DEST_DIR"
echo "compressiom : $COMPRESSION"

