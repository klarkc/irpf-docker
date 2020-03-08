#!/bin/sh
set -e

YEAR=$(date +"%Y")
URL="http://receita.economia.gov.br/interface/cidadao/irpf/${YEAR}/download/multiplataforma-zip"
ZIP=$(wget -q $URL -O - | grep -Po "(?<=\")[^ ]+${YEAR}[^ ]+\.zip(?=\")" | head -n1)

wget $ZIP -O app.zip --no-check-certificate
unzip app.zip
rm app.zip
ln -s IRPF${YEAR} IRPF