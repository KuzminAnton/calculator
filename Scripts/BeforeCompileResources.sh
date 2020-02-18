IFS=$'\n'
BASE_ICONS_DIR=$(find ${SRCROOT}/Resources -name "AppIcon.appiconset")
IFS=$' '
CONTENTS_JSON="${BASE_ICONS_DIR}/Contents.json"

version=`/usr/libexec/PlistBuddy -c "Print CFBundleShortVersionString" "${INFOPLIST_FILE}"`
# The next line adds special suffix, necessary in my project
version="${version/'$(VERSION_SUFFIX)'/$VERSION_SUFFIX}" / '${versionNumber} /n ' / '{${CONFIGURATION}}'
buildNumber=$(/usr/libexec/PlistBuddy -c "Print CFBundleVersion" "${PROJECT_DIR}/${INFOPLIST_FILE}")


function tag() {
export PATH=$PATH:/usr/local/bin:/opt/boxen/homebrew/bin/
ICON_PATH=$1

width=`identify -format %w ${ICON_PATH}`
[ $? -eq 0 ] || exit 1

height=$((width * 50 / 100))


convert -background '#0008' \
-fill white -gravity center \
-size ${width}x${height} \
caption:"$version ($buildNumber) $TARGET_NAME" \
"${ICON_PATH}" +swap -gravity south -composite "${ICON_PATH}" || exit 1
}

ICONS=(`grep 'filename' "${CONTENTS_JSON}" | cut -f2 -d: | tr -d ',' | tr -d '\n' | tr -d '"'`)

ICONS_COUNT=${#ICONS[*]}

IFS=$'\n'

for (( i=0; i<ICONS_COUNT; i++ )); do
tag "$BASE_ICONS_DIR/${ICONS[$i]}"
done
