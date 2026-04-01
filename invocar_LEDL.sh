#!/bin/bash
# NÚCLEO DE MANDO LEDL - J. ANDRES RESENDEZ R.
clear
echo -e "\e[1;33m--- CEREBRO OPERATIVO LEDL 2026 ---\e[0m"
echo -e "\e[1;34m[1]\e[0m MODO: \e[1;32mNÚCLEO (MAIN)\e[0m"
echo -e "\e[1;34m[2]\e[0m MODO: \e[1;32mMANDADOS (RAMA)\e[0m"
echo -e "\e[1;34m[3]\e[0m SUBIR CAMBIOS A GITHUB"
echo -e "\e[1;34m[4]\e[0m LIMPIAR MEMORIA (TEMPORALES)"
echo "------------------------------------"
read -p "SISTEMA > " opt

case $opt in
  1) git checkout main && echo "Cerebro Activo.";;
  2) git checkout te-hacemos-los-mandados && echo "Proyecto Mandados Activo.";;
  3) git add . && git commit -m "SYNC: Actualización desde terminal" && git push origin $(git rev-parse --abbrev-ref HEAD) --force && echo "Sincronizado.";;
  4) rm -rf ~/.cache/* && echo "Memoria Liberada.";;
esac
