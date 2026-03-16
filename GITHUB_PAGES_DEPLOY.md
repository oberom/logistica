# Como Fazer Deploy no GitHub Pages - Guia Simples

## Passo 1: Criar um repositório no GitHub

1. Acesse [github.com](https://github.com) e faça login
2. Clique em "New Repository" (novo repositório)
3. Nome do repositório: `logistica-saas` (ou o nome que preferir)
4. Deixe como "Public"
5. Clique em "Create Repository"

## Passo 2: Configurar o projeto localmente

Abra o terminal na pasta do projeto e execute:

```bash
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/SEU-USUARIO/logistica-saas.git
git push -u origin main
```

Substitua `SEU-USUARIO` pelo seu usuário do GitHub.

## Passo 3: Atualizar o arquivo package.json

Abra o arquivo `package.json` e procure por esta linha:

```json
"homepage": "https://seu-usuario.github.io/seu-repositorio",
```

Substitua `seu-usuario` pelo seu usuário do GitHub e `seu-repositorio` pelo nome do repositório que criou.

**Exemplo:**
```json
"homepage": "https://joao123.github.io/logistica-saas",
```

## Passo 4: Fazer o Build e Deploy

No terminal, execute:

```bash
npm run deploy:all
```

Ou, se estiver usando `pnpm`:

```bash
pnpm deploy:all
```

Isso vai:
1. Fazer o build do projeto (gerar os arquivos estáticos)
2. Enviar os arquivos para o GitHub Pages automaticamente

## Passo 5: Configurar GitHub Pages (apenas uma vez)

1. Vá para o repositório no GitHub
2. Clique em "Settings" (Configurações)
3. No menu esquerdo, clique em "Pages"
4. Em "Source", selecione "Deploy from a branch"
5. Escolha a branch `gh-pages` e pasta `/ (root)`
6. Clique em "Save"

## Pronto! 🎉

Sua landing page estará disponível em:
```
https://seu-usuario.github.io/logistica-saas
```

(Substitua `seu-usuario` e `logistica-saas` pelos valores reais)

## Próximas atualizações

Sempre que quiser atualizar a página, basta fazer:

```bash
git add .
git commit -m "Descrição da mudança"
git push
npm run deploy:all
```

## Troubleshooting

**Problema:** Página não aparece após deploy
- **Solução:** Aguarde 2-3 minutos e atualize a página (Ctrl+F5)

**Problema:** Página aparece mas está vazia
- **Solução:** Verifique se o `homepage` no `package.json` está correto

**Problema:** Não consegue fazer git push
- **Solução:** Verifique se você tem permissão no repositório e se está usando a URL correta
