# Claude Code DevContainer Template

Claude Code CLIを使用するためのDevContainerテンプレートです。

## 使い方

1. このテンプレートを使ってリポジトリを作成
2. VS Codeで開く
3. 「Reopen in Container」を実行
4. コンテナ内で `claude` コマンドが使用可能

## 含まれるもの

- Claude Code CLI（最新版）
- GitHub CLI
- 設定・認証情報の永続化（ボリュームマウント）
- 自動更新の無効化

## GitHub CLI認証

デフォルトではコンテナごとに独立した認証を持ちます。

```bash
gh auth login
```

ホスト側の認証を使う場合は、`.devcontainer/devcontainer.json` のコメントを切り替えてください。

## カスタマイズ

### Features で追加（推奨）

`.devcontainer/devcontainer.json` の `features` フィールドに追加：

```json
"features": {
  "ghcr.io/devcontainers/features/python:1": {},
  "ghcr.io/devcontainers/features/node:1": {}
}
```

利用可能なfeaturesは https://containers.dev/features で検索できます。

### Dockerfile で追加

`.devcontainer/Dockerfile` を直接編集してパッケージをインストールすることも可能です。

## バージョン固定

Dockerfileの `ARG CLAUDE_VERSION=latest` を変更すると、特定バージョンを使用できます。
