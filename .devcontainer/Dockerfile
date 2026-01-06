FROM mcr.microsoft.com/devcontainers/base:ubuntu
ARG CLAUDE_VERSION=latest

# Persist bash history
RUN mkdir /commandhistory \
    && touch /commandhistory/.bash_history \
    && chown -R vscode:vscode /commandhistory

USER vscode

# Setup bash history, install Claude CLI, and create config directories
RUN echo 'export PROMPT_COMMAND="history -a" && export HISTFILE=/commandhistory/.bash_history' >> ~/.bashrc \
    && curl -fsSL https://claude.ai/install.sh | bash -s ${CLAUDE_VERSION} \
    && mkdir -p /home/vscode/.claude /home/vscode/.config/gh

# Environment variables
ENV DISABLE_AUTOUPDATER=1 \
    PATH="/home/vscode/.local/bin:${PATH}"

WORKDIR /workspaces
