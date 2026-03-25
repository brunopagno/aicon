FROM node:22-slim

ARG UID=1000
ARG GID=1000

RUN groupmod -g $GID node && usermod -u $UID -g $GID node

RUN npm install -g opencode-ai \
    && npm cache clean --force \
    && rm -rf /root/.npm

RUN mkdir -p /home/node/.config/opencode \
    && chown -R node:node /home/node/.config/opencode

WORKDIR /workspace
USER node
CMD ["bash"]
