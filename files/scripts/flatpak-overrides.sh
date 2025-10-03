#!/usr/bin/env bash

set -euxo pipefail

flatpak override --system io.github.kolunmi.Bazaar --filesystem=host-etc
