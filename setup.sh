#!/bin/bash
# RAPiS Claude Code セットアップスクリプト
# 使い方: bash <(curl -s https://raw.githubusercontent.com/admindx/rapis-claude-config/main/setup.sh)

set -e

REPO="https://raw.githubusercontent.com/admindx/rapis-claude-config/main"
CLAUDE_DIR="$HOME/.claude"

echo "======================================"
echo "  株式会社RAPiS - Claude Code セットアップ"
echo "======================================"

# Node.js チェック
if ! command -v node &> /dev/null; then
  echo "❌ Node.js が見つかりません。https://nodejs.org からインストールしてください。"
  exit 1
fi

# Claude Code インストール
echo "📦 Claude Code をインストール中..."
npm install -g @anthropic-ai/claude-code

# ディレクトリ作成
echo "📁 設定ディレクトリを作成中..."
mkdir -p "$CLAUDE_DIR/rules"
mkdir -p "$CLAUDE_DIR/skills"
mkdir -p "$CLAUDE_DIR/memory"
mkdir -p "$CLAUDE_DIR/downloads"

# CLAUDE.md ダウンロード
echo "📄 CLAUDE.md をダウンロード中..."
curl -s "$REPO/CLAUDE.md" -o "$CLAUDE_DIR/CLAUDE.md"

# rules/ ダウンロード
echo "📄 キャラクター設定をダウンロード中..."
for file in ceo-luffy coo-zoro design-robin dx-franky hr-usopp marketing-nami mq-accounting rd-chopper sales-sanji secretary-vivi strategy-jinbe support-brook; do
  curl -s "$REPO/rules/${file}.md" -o "$CLAUDE_DIR/rules/${file}.md"
  echo "  ✅ ${file}.md"
done

echo ""
echo "======================================"
echo "  ✅ セットアップ完了！"
echo "======================================"
echo ""
echo "次のステップ："
echo "  1. ターミナルで claude と入力して起動"
echo "  2. Anthropicアカウントでログイン"
echo "  3. 何か質問してみましょう！"
echo ""
