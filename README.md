# aicon

aicon is AI CONtainer

It uses docker & docker compose

## Do the thing

```bash
# Build with this magic thing so permissions work
UID=$(id -u) GID=$(id -g) docker-compose build

# Run the container on the target folder
WORKSPACE=$HOME/workspace docker-compose run --rm aicon
```

If necessary write some aliases

## Tools included

- claudecode
- opencode.ai
