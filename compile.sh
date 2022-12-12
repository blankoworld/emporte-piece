#!/usr/bin/env bash
#
# compile.sh
#
# Remplace les chaînes ${} par leur équivalent en variable d'environnement

#####
## VARIABLES
###

TEMPLATE="template/index.html"
DESTINATION="public/result.html"
VARIABLE_FILES=".env"

#####
## TESTS
###

if [[ ! -d "./public" ]]; then
  mkdir public
fi

#####
## DÉBUT
###

# Chargement du fichier .env s'il existe
if [[ -f "${VARIABLE_FILES}" ]]; then
  source "${VARIABLE_FILES}"
fi

# Remplacement des variables d'environnement dans le template
eval "cat <<EOF
$(<${TEMPLATE})
EOF
" 2> /dev/null > ${DESTINATION}

#####
## FIN
###

exit 0
# vim: ts=2 sw=2 et nu syn=bash
