#!/bin/sh
# Verifica se ARQUIVO (padrão: teste.txt) contém exatamente "teste" + LF.
arquivo=${1:-teste.txt}

if [ -f "$arquivo" ] && printf 'teste\n' | cmp -s - "$arquivo"; then
  echo OK
  exit 0
fi

echo FALHA
exit 1
