#!/bin/sh
# Marca una nueva versión: la app se recarga sola en los celulares al detectarla.
V=$(TZ=America/Lima date +%Y.%m.%d-%H%M)
sed -i "s/const APP_VERSION = \"[^\"]*\"/const APP_VERSION = \"$V\"/" index.html
printf '{"version":"%s"}\n' "$V" > version.json
echo "Versión $V"
