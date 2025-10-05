# Synby-OS

Personal Image built for myself. May or may not expand in the future.
Thanks [Secureblue](https://github.com/secureblue/secureblue) and [AtiusAmy](https://github.com/AtiusAmy/trivalent-images) for letting me borrow some scripts!

## Installation

> [!WARNING]
> [This is an experimental feature](https://www.fedoraproject.org/wiki/Changes/OstreeNativeContainerStable), try at your own discretion.

To rebase an existing atomic Fedora installation to the latest build:

- First rebase to the unsigned image, to get the proper signing keys and policies installed:
  ```
  sudo bootc switch ostree-unverified-registry:ghcr.io/synby-os/synby-os-nvidia-open:latest
  ```
- Reboot to complete the rebase:
  ```
  systemctl reboot
  ```
- Then rebase to the signed image, like so:
  ```
  sudo bootc switch ostree-image-signed:ghcr.io/synby-os/synby-os-nvidia-open:latest
  ```
- Reboot again to complete the installation
  ```
  systemctl reboot
  ```

The `latest` tag will automatically point to the latest build. That build will still always use the Fedora version specified in `recipe.yml`, so you won't get accidentally updated to the next major version.

## Verification

These images are signed with [Sigstore](https://www.sigstore.dev/)'s [cosign](https://github.com/sigstore/cosign). You can verify the signature by downloading the `cosign.pub` file from this repo and running the following command:

```bash
cosign verify --key cosign.pub ghcr.io/ghcr.io/synby-os/synby-os-nvidia-open
```
