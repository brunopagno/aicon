FROM node:22-slim

RUN npm install -g @anthropic-ai/claude-code opencode-ai \
    && npm cache clean --force \
    && rm -rf /root/.npm

WORKDIR /workspace
CMD ["bash"]
