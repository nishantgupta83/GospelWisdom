#!/bin/bash

# GitaWisdom iOS Production Build Script
# Builds signed production IPA with embedded credentials for App Store submission

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${GREEN}📱 GitaWisdom iOS Production Build Script${NC}"
echo ""

# Check if .env exists
if [ ! -f ".env" ]; then
    echo -e "${RED}❌ Error: .env not found${NC}"
    echo "Please create .env with your Supabase credentials"
    exit 1
fi

# Load environment variables
source .env

# Validate required variables
if [ -z "$SUPABASE_URL" ] || [ -z "$SUPABASE_ANON_KEY" ]; then
    echo -e "${RED}❌ Error: Missing SUPABASE_URL or SUPABASE_ANON_KEY${NC}"
    exit 1
fi

echo -e "${GREEN}✅ Credentials loaded${NC}"
echo -e "${YELLOW}📱 Building iOS app with embedded credentials...${NC}"
echo ""

# Build dart-define flags for production
DART_DEFINES=(
    "--dart-define=SUPABASE_URL=$SUPABASE_URL"
    "--dart-define=SUPABASE_ANON_KEY=$SUPABASE_ANON_KEY"
    "--dart-define=APP_ENV=production"
    "--dart-define=ENABLE_ANALYTICS=true"
    "--dart-define=ENABLE_LOGGING=false"
)

# Clean previous builds
echo -e "${BLUE}🧹 Cleaning previous builds...${NC}"
flutter clean
flutter pub get

echo ""
echo -e "${BLUE}🔨 Building iOS release with obfuscation...${NC}"
echo -e "${YELLOW}🔐 Optimizations: Obfuscation enabled for security${NC}"

# Build iOS app with credentials embedded
flutter build ios --release \
    --obfuscate \
    --split-debug-info=build/ios-debug-symbols \
    "${DART_DEFINES[@]}"

echo ""
echo -e "${GREEN}✅ iOS build completed successfully!${NC}"
echo ""
echo -e "${YELLOW}📍 Next steps:${NC}"
echo -e "  1. Open Xcode: ${BLUE}open ios/Runner.xcworkspace${NC}"
echo -e "  2. Select 'Any iOS Device (arm64)' as the build target"
echo -e "  3. Product → Archive (⌘ + Shift + R)"
echo -e "  4. Distribute App → App Store Connect"
echo ""
echo -e "${YELLOW}🔍 Debug symbols location:${NC} build/ios-debug-symbols"
echo ""
echo -e "${GREEN}🎉 iOS production build ready for App Store submission!${NC}"
