#!/bin/bash

# Listo 웹 파일을 public 저장소로 동기화하는 스크립트

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"
TEMP_DIR="/tmp/listo-web-sync"
REPO_URL="git@github.com:jaloveeye/listo-web.git"

echo "🔄 Listo 웹 파일 동기화 시작..."

# 임시 디렉토리 정리
if [ -d "$TEMP_DIR" ]; then
    echo "📂 기존 임시 디렉토리 삭제 중..."
    rm -rf "$TEMP_DIR"
fi

# 저장소 클론
echo "📥 Public 저장소 클론 중..."
git clone "$REPO_URL" "$TEMP_DIR"

# 웹 파일 복사
echo "📋 웹 파일 복사 중..."
cp -r "$SCRIPT_DIR"/* "$TEMP_DIR/"

# .nojekyll 파일 확인
if [ ! -f "$TEMP_DIR/.nojekyll" ]; then
    touch "$TEMP_DIR/.nojekyll"
fi

# 변경사항 확인
cd "$TEMP_DIR"
if [ -z "$(git status --porcelain)" ]; then
    echo "✅ 변경사항이 없습니다."
    rm -rf "$TEMP_DIR"
    exit 0
fi

# 커밋 및 푸시
echo "💾 변경사항 커밋 중..."
git add -A
git commit -m "Update legal documents from main repository

Auto-synced from private repository at $(date +'%Y-%m-%d %H:%M:%S')"

echo "🚀 Public 저장소에 푸시 중..."
git push origin main

# 정리
echo "🧹 임시 디렉토리 정리 중..."
rm -rf "$TEMP_DIR"

echo "✅ 동기화 완료!"
echo ""
echo "🌐 GitHub Pages URL:"
echo "   https://jaloveeye.github.io/listo-web/"
echo ""
echo "📝 GitHub Pages 설정:"
echo "   1. https://github.com/jaloveeye/listo-web/settings/pages"
echo "   2. Source: Deploy from a branch"
echo "   3. Branch: main"
echo "   4. Folder: / (root)"
echo "   5. Save"

