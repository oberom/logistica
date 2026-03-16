#!/bin/bash

# Script de Deploy para GitHub Pages
# Uso: ./deploy.sh

echo "🚀 Iniciando deploy para GitHub Pages..."
echo ""

# Verificar se o repositório Git está inicializado
if [ ! -d ".git" ]; then
    echo "❌ Erro: Este não é um repositório Git."
    echo "Execute 'git init' primeiro."
    exit 1
fi

# Fazer build do projeto
echo "📦 Fazendo build do projeto..."
npm run build

if [ $? -ne 0 ]; then
    echo "❌ Erro ao fazer build. Verifique os erros acima."
    exit 1
fi

echo "✅ Build concluído com sucesso!"
echo ""

# Fazer deploy
echo "📤 Enviando para GitHub Pages..."
npm run deploy

if [ $? -ne 0 ]; then
    echo "❌ Erro ao fazer deploy. Verifique os erros acima."
    exit 1
fi

echo "✅ Deploy concluído com sucesso!"
echo ""
echo "🎉 Sua landing page está sendo publicada no GitHub Pages!"
echo "Aguarde 2-3 minutos e acesse a URL do seu repositório."
