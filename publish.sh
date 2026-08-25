#!/usr/bin/env bash
# Sync the two concepts (and their assets) out of the design folder and push.
# The HTML is edited over there; this repo is only the published copy.
set -euo pipefail

REPO="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SRC="$(cd "$REPO/../עיצוב עמוד הבית" && pwd)"

FILES=(
  "concept-1-hero.html"
  "concept-2-hero.html"
  "IMAGE - INDUSTRIES - consumer.jpg"
  "IMAGE - INDUSTRIES - defence.jpg"
  "IMAGE - INDUSTRIES - food.jpg"
  "IMAGE - INDUSTRIES - healthcare.jpg"
  "IMAGE - INDUSTRIES - retail.jpg"
  "IMAGE - ONE STOP SHOP.jpg"
  "clients-video.mp4"
  "clients-video-poster.jpg"
  "hero-video.mp4"
  "hero-video-poster.jpg"
)

for f in "${FILES[@]}"; do
  cp "$SRC/$f" "$REPO/$f"
done

cd "$REPO"
if git diff --quiet && git diff --cached --quiet; then
  echo "אין שינויים לדחוף."
  exit 0
fi

git add -A
git commit -m "${1:-Sync the concepts from the design folder}"
git push
echo
echo "עלה. הדף מתעדכן תוך דקה־שתיים:"
echo "https://rotemmoveo.github.io/orian-website-prototype/"
