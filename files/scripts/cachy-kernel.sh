#!/usr/bin/env bash

set -ouex pipefail

echo "set selinux policy to let cachyOS kernel load kernel modules"
setsebool -P domain_kernel_load_modules on

dnf5 versionlock delete kernel{,-core,-modules,-modules-core,-modules-extra,-tools,-tools-lib,-headers,-devel,-devel-matched}

dnf5 copr enable bieszczaders/kernel-cachyos

dnf5 install kernel-cachyos kernel-cachyos-devel-matched

dnf5 -y remove kernel kernel-core kernel-modules kernel-modules-core kernel-modules-extra

dnf5 versionlock add kernel{,-core,-modules,-modules-core,-modules-extra,-tools,-tools-lib,-headers,-devel,-devel-matched}