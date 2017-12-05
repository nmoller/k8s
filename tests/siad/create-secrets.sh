#! /usr/bin/env bash
#
#

#tr -d '\n' pour ne pas avoir un saut de ligne.
sed "s/DB_USERNAME/$( echo -n $1 |base64 -w0|tr -d '\n')/g" secrets-moodle01.tmpl.yml | \
sed "s/DB_PASSWORD/$( echo -n $2 |base64 -w0|tr -d '\n')/g" | \
sed "s/DB_HOST/$( echo -n $3 |base64 -w0|tr -d '\n')/g" | \
sed "s/DB_NAME/$( echo -n $4 |base64 -w0|tr -d '\n')/g" | \
cat -