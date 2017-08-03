#! /usr/bin/env bash
#
#

#tr -d '\n' pour ne pas avoir un saut de ligne.
sed "s/LOCAL_PWD/$( echo $1 |base64 -w0|tr -d '\n')/g" secrets-moodle01.tmpl.yml | \
cat -