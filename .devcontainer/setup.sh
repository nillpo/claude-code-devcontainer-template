#!/bin/bash
[ -f ~/.claude/.config.json ] || echo '{}' > ~/.claude/.config.json
sudo chown -R vscode:vscode /commandhistory \
  /home/vscode/.config/gh \
  /home/vscode/.claude