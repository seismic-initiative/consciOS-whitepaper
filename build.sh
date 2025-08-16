#!/usr/bin/env bash
set -euo pipefail
mkdir -p build
if ! command -v pandoc >/dev/null 2>&1; then echo 'pandoc not found (brew install pandoc; brew install --cask mactex-no-gui or brew install tectonic)'; exit 1; fi
ENGINE=tectonic
pandoc --from gfm --to pdf --pdf-engine=${ENGINE} \
  --metadata title='Seismic Initiative Whitepaper v0.2' \
  -o build/Seismic_Whitepaper_v0.2.pdf WHITEPAPER.md
echo "Wrote build/Seismic_Whitepaper_v0.2.pdf"
