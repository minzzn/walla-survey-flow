#!/bin/bash
# Watches this folder for changes and auto-deploys to Netlify on save.
# Usage: ./watch-deploy.sh
# Stop with Ctrl+C.

cd "$(dirname "$0")"
SITE_ID="52bd81fc-3819-43f8-b6bc-2945cdf11e1f"

hash_dir() {
  find . \
    -not -path './.netlify*' \
    -not -path './.git*' \
    -not -name '.DS_Store' \
    -not -name 'watch-deploy.sh' \
    -type f -exec md5 -q {} \; 2>/dev/null | md5 -q
}

last_hash=$(hash_dir)
echo "Watching $(pwd) for changes... (Ctrl+C to stop)"

while true; do
  sleep 2
  current_hash=$(hash_dir)
  if [ "$current_hash" != "$last_hash" ]; then
    echo "[$(date '+%H:%M:%S')] Change detected, deploying..."
    cp walla-survey-flow.html index.html
    # Snapshot the hash right after cp (what we're actually about to upload),
    # not after the deploy call returns -- edits made during the deploy
    # window would otherwise be silently marked as already-deployed.
    deploying_hash=$(hash_dir)
    npx --yes netlify-cli deploy --dir="$(pwd)" --site="$SITE_ID" --prod --message "Auto-deploy on save" 2>&1 | grep -v "npm warn"
    last_hash=$deploying_hash
    echo "[$(date '+%H:%M:%S')] Deploy done."
  fi
done
