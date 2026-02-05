#!/bin/bash
# MoviesMod Link Extractor - NO BROWSER NEEDED
# Usage: ./extract.sh <post_id>

POST_ID=$1

if [ -z "$POST_ID" ]; then
    echo "Usage: ./extract.sh <post_id>"
    echo "Example: ./extract.sh 148660"
    exit 1
fi

echo ""
echo "🎬 MoviesMod Link Extractor"
echo "==========================="
echo ""

# Step 1: Get title and URLFlix ID from WordPress API
echo "📡 Fetching from WordPress API (Post ID: $POST_ID)..."
API_RESPONSE=$(curl -s "https://links.modpro.blog/wp-json/wp/v2/posts/$POST_ID")

TITLE=$(echo "$API_RESPONSE" | grep -oE '"title":\{"rendered":"[^"]+' | sed 's/"title":{"rendered":"//' | sed 's/&#8211;/-/g')
URLFLIX_ID=$(echo "$API_RESPONSE" | grep -oE 'urlflix\.xyz\\/gets\\/[A-Za-z0-9]+' | sed 's/\\//g' | sed 's/urlflix.xyz\/gets\///')

if [ -z "$URLFLIX_ID" ]; then
    echo "❌ No URLFlix link found for post $POST_ID"
    exit 1
fi

echo "📋 Title: $TITLE"
echo "🔗 URLFlix ID: $URLFLIX_ID"
echo ""

# Step 2: Get Views ID from URLFlix (bypass captcha)
echo "🔓 Bypassing URLFlix captcha..."
VIEWS_ID=$(curl -s -A "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36" "https://urlflix.xyz/gets/$URLFLIX_ID" | grep -oE 'views/[A-Za-z0-9]+' | head -1 | sed 's/views\///')

if [ -z "$VIEWS_ID" ]; then
    echo "❌ Could not extract Views ID"
    exit 1
fi

echo "🔑 Views ID: $VIEWS_ID"
echo ""

# Step 3: Get final download links
echo "📥 Extracting final download links..."
echo ""
echo "=========================================="
echo "📊 DOWNLOAD LINKS"
echo "=========================================="
echo "Title: $TITLE"
echo "Post ID: $POST_ID"
echo ""

curl -s -A "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36" "https://urlflix.xyz/views/$VIEWS_ID" | grep -oE 'href="https://[^"]+' | sed 's/href="//' | grep -v urlflix | grep -v google | while read link; do
    echo "✓ $link"
done

echo ""
echo "=========================================="
