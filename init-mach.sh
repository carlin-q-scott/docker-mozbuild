#!/bin/sh
set -e
pushd /c/mozilla-source
curl https://hg.mozilla.org/mozilla-central/archive/tip.zip/build/ | tar -xf -
curl https://hg.mozilla.org/mozilla-central/archive/tip.zip/tools/ | tar -xf -
wget https://hg.mozilla.org/mozilla-central/raw-file/tip/mach && chmod +x mach
./mach bootstrap
popd
set +e