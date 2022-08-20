#!/bin/bash

set -e
POST_SLUG="$1"
if [ -z "$POST_SLUG" ]; then
  read -p "Post Name (e.g. your-new-post): " POST_SLUG
fi
TIMESTAMP=`date +%Y%m%d%H%M%S`
POST_DIRECTORY="${TIMESTAMP}-${POST_SLUG}"
hugo new "posts/${POST_DIRECTORY}/index.md"