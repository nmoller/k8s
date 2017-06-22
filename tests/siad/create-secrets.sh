#! /usr/bin/env bash
#
#

#tr -d '\n' pour ne pas avoir un saut de ligne.
sed "s/DB_USERNAME/$( echo $1 |base64 -w0|tr -d '\n')/g" secrets-moodle01.tmpl.yml | \
sed "s/DB_PASSWORD/$( echo $2 |base64 -w0|tr -d '\n')/g" | \
sed "s/DB_HOST/$( echo $3 |base64 -w0|tr -d '\n')/g" | \
sed "s/DB_NAME/$( echo $4 |base64 -w0|tr -d '\n')/g" | \
cat -