FROM node:22-slim

ARG UID=1000
ARG GID=1000

RUN groupadd -g $GID appuser && useradd -m -u $UID -g $GID appuser

RUN npm install -g @anthropic-ai/claude-code opencode-ai \
    && npm cache clean --force \
    && rm -rf /root/.npm

WORKDIR /workspace
USER appuser
CMD ["bash"]
