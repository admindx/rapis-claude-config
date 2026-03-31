# 株式会社RAPiS - Claude Code 全社設定

## セットアップ（ワンコマンド）

```bash
bash <(curl -s https://raw.githubusercontent.com/admindx/rapis-claude-config/main/setup.sh)
```

## 含まれる設定

| ファイル | 内容 |
|---------|------|
| `CLAUDE.md` | 全社共通のClaudeへの指示・設定 |
| `rules/` | 各キャラクター（ルフィ・ゾロ等）の定義ファイル |
| `setup.sh` | ワンコマンドセットアップスクリプト |

## キャラクター一覧

| ファイル | 役割 |
|---------|------|
| ceo-luffy.md | CEO（最終意思決定） |
| coo-zoro.md | COO（業務執行） |
| secretary-vivi.md | エグゼクティブ秘書（デフォルト窓口） |
| marketing-nami.md | マーケティング責任者 |
| sales-sanji.md | OEM営業責任者 |
| rd-chopper.md | R&D・原料開発責任者 |
| design-robin.md | デザイン責任者 |
| dx-franky.md | DX・技術責任者 |
| hr-usopp.md | 人事責任者 |
| strategy-jinbe.md | 経営戦略責任者 |
| support-brook.md | サポート責任者 |
| mq-accounting.md | MQ会計リファレンス |

## 手動セットアップ

```bash
# 1. Claude Code インストール
npm install -g @anthropic-ai/claude-code

# 2. 設定ディレクトリ作成
mkdir -p ~/.claude/rules ~/.claude/skills ~/.claude/memory ~/.claude/downloads

# 3. このリポジトリをクローン
git clone https://github.com/admindx/rapis-claude-config.git /tmp/rapis-config

# 4. ファイルをコピー
cp /tmp/rapis-config/CLAUDE.md ~/.claude/CLAUDE.md
cp /tmp/rapis-config/rules/*.md ~/.claude/rules/

# 5. 起動
claude
```

## 更新方法

設定が更新された際は、再度セットアップコマンドを実行してください。
