#!/bin/bash
set -e
cd "$(dirname "$0")"
SITE_ROOT="$PWD"
LOCAL_RUNTIME="$SITE_ROOT/../../work/runtime/bin"
if [ -x "$LOCAL_RUNTIME/ruby" ]; then
  export PATH="$LOCAL_RUNTIME:$PATH"
fi
export BUNDLE_USER_HOME="$SITE_ROOT/../../work/bundle-user"
export GEM_SPEC_CACHE="$SITE_ROOT/../../work/gem-spec-cache"
printf '\nLocal homepage: http://127.0.0.1:4000\nKeep this window open while previewing. Press Control+C to stop.\n\n'
exec bundle exec jekyll serve --config _config.yml,_config.local.yml --host 127.0.0.1 --port 4000
