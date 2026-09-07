#!/bin/bash
#######################
#Problem: Create two scripts: `set_env.sh` (which sets `DB_HOST=10.0.0.1` and `DB_PORT=5432`) and `driver.sh`. Demonstrate in `driver.sh` the difference between running `./set_env.sh` (forked subshell) and `source ./set_env.sh` (current environment).
#######################

cat <<'EOF' > /tmp/setenv.sh
DB_HOST=10.0.0.1
DB_PORT=5432
EOF
chmod +x /tmp/setenv.sh

/tmp/setenv.sh
echo "ececuting setenv in subshell:
Db_host : ${DB_HOST}"


source /tmp/setenv.sh
echo "ececuting setenv in current shell with source:
Db_host : ${DB_HOST}"

