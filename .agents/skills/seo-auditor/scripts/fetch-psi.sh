#!/bin/bash
# Fetch PageSpeed Insights data for a URL (lab + field if available)
# Usage: ./fetch-psi.sh <url> [mobile|desktop]
# Requires no API key for low volume (shared quota). For production use a free key.

URL="$1"
STRATEGY="${2:-mobile}"

if [ -z "$URL" ]; then
  echo "Usage: $0 <url> [mobile|desktop]"
  exit 1
fi

ENCODED_URL=$(python3 -c "import urllib.parse; print(urllib.parse.quote('$URL', safe=''))")
API_URL="https://www.googleapis.com/pagespeedonline/v5/runPagespeed?url=${ENCODED_URL}&strategy=${STRATEGY}&category=performance&category=seo&category=accessibility&category=best-practices"

echo "Fetching PSI for $URL ($STRATEGY)..."
curl -s "$API_URL" | python3 -m json.tool
