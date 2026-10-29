#!/bin/sh
set -eu
cd "$(dirname "$0")"

gh auth status >/dev/null
git init
git add support-kb 4471-causes.html issues publish.sh
git commit -m "Document two causes behind support ticket 4471"
gh repo create jwasala-appsilon/mega-s01e03-what-it-shows --public --source . --remote origin --push
gh issue create --repo jwasala-appsilon/mega-s01e03-what-it-shows --title 'Day-first tenant dates are parsed month first (379 reports in #4471)' --body-file issues/parser.md
gh issue create --repo jwasala-appsilon/mega-s01e03-what-it-shows --title 'Booking-v3 date hint conflicts with day-first tenant format (33 reports in #4471)' --body-file issues/hint.md
