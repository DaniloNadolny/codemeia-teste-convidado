<!-- codeauto:start -->
# Documentação viva — codemeia-teste-convidado (teste)

Pasta mantida pela fábrica CodeAutomation v4. A cada task entregue via PR, a fábrica escreve aqui o dossiê da task e uma
linha no changelog, no mesmo commit do código. Revise estes arquivos junto com o diff do PR.

## Propósito desta pasta

- `tasks/<id>.md` — dossiê de cada task: demanda original, requisitos EARS, decisões fechadas, gates por tentativa, conselho,
  verificação visual, custo e lições.
- `CHANGELOG.md` — uma linha por task, da mais recente para a mais antiga.
- `README.md` — este arquivo; só o bloco entre `codeauto:start` e `codeauto:end` é regenerado. Escreva fora dele à vontade.

## Regras e convenções do produto

(nenhuma convenção registrada no produto)

## Gates da fábrica para este repositório

- Stack `other` / tipo `other`; branch base `main`; deploy `manual`.
- Mechanical: `true`.
- Semantic: cada requisito R* da spec precisa de evidência no diff (auditoria por outra CLI).
- Council: revisores por lente + refutador de CLI distinta; limiar de confiabilidade 0.85.
- Verify: não aplicável (repo não-frontend ou sem app_port).
- Release: política `human_gate` — commit único, PR e merge só após aprovação humana.

## Como abrir uma demanda

```bash
curl -s -X POST -H "Authorization: Bearer $CODEAUTO_TOKEN" -H "Content-Type: application/json" \
  -d '{"title":"...","description":"...","product":"teste","repo_name":"codemeia-teste-convidado"}' \
  $CODEAUTO_URL/api/tasks
```

Escreva a demanda com decisões fechadas e exclusões explícitas: a spec EARS é gerada e revisada por outra CLI antes de
qualquer código, e a task só vira PR depois de mechanical, semantic, council e verify aprovarem.

## Referências

- [AGENTS.md](../../AGENTS.md) — regras para agentes neste repositório.
- [.claude/rules](../../.claude/rules) — regras adicionais por tema.
- [CHANGELOG.md](CHANGELOG.md) · [tasks/](tasks/)
<!-- codeauto:end -->
