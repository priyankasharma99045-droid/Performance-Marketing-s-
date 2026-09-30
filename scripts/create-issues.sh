#!/usr/bin/env bash
# Creates 4 phase milestones + 60 daily issues using the GitHub CLI.
# Usage: gh auth login, then run from the repo root: bash scripts/create-issues.sh
set -euo pipefail
repo=$(gh repo view --json nameWithOwner -q .nameWithOwner)
declare -A due=(["Phase 1: Foundations + Tracking"]="2026-10-13" ["Phase 2: Google Ads"]="2026-10-29" ["Phase 3: Meta + Other Channels"]="2026-11-14" ["Phase 4: Advanced + Job Ready"]="2026-11-28")
for m in "${!due[@]}"; do
  gh api "repos/$repo/milestones" -f title="$m" -f due_on="${due[$m]}T23:59:00Z" >/dev/null 2>&1 || true
done
python3 - <<'PY' | while IFS=$'\t' read -r title body milestone; do
import csv
for r in csv.DictReader(open('scripts/issues.csv')):
    print(r['title'], r['body'].replace('\n','\\n'), r['milestone'], sep='\t')
PY
  gh issue create --title "$title" --body "$(printf '%b' "$body")" --milestone "$milestone"
done
