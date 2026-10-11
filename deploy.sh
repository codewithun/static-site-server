
#!/usr/bin/env bash
set -euo pipefail

SERVER="roadmap-server"
REMOTE_DIR="/var/www/static-site/"

echo "Deploying static site to ${SERVER}..."

rsync -avz --delete \
  site/ \
  "${SERVER}:${REMOTE_DIR}"

echo "Deployment completed!"
