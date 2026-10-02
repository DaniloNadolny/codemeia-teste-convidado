#!/bin/sh
# Verifica que o README tem exatamente 3 linhas com os textos esperados.
# Uso: sh tests/readme_descricao.sh [caminho]   (padrão: README.md)

arquivo="${1:-README.md}"

falha() {
    echo "FALHA: $1" >&2
    exit 1
}

[ -f "$arquivo" ] || falha "arquivo inexistente: $arquivo"

total=$(grep -c '' "$arquivo")
[ "$total" = 3 ] || falha "esperado 3 linhas, encontrado $total"

sed -n 1p "$arquivo" | grep -Fxq '# codemeia-teste-convidado' \
    || falha "linha 1 diferente do esperado"
sed -n 2p "$arquivo" | grep -Fxq 'Repositório descartável para a prova de isolamento da Codemeia (Etapa 2C)' \
    || falha "linha 2 diferente do esperado"
sed -n 3p "$arquivo" | grep -Fxq 'Este repositório existe apenas para testes e pode ser apagado a qualquer momento.' \
    || falha "linha 3 diferente do esperado"

echo "OK: $arquivo"
