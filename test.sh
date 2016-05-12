#!/bin/bash
set -eu -o pipefail
set -x

export PATH=/opt/ghc/8.0.1/bin:$PATH
export HADDOCK_PATH="$(stack path --local-install-root)/bin/haddock"
stack test
echo OK
