# RebornOS UKUI Skeleton

[![Discord Server](https://dcbadge.vercel.app/api/server/cU5s6MPpQH?style=flat)](https://discord.gg/cU5s6MPpQH)
[![GitHub License](https://img.shields.io/github/license/rebornos-team/rebornos-ukui-skel)](LICENSE)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/rebornos-team/rebornos-ukui-skel)
[![Release](https://github.com/RebornOS-Team/rebornos-ukui-skel/actions/workflows/release.yml/badge.svg)](https://github.com/RebornOS-Team/rebornos-ukui-skel/actions/workflows/release.yml)
[![Pre-Release (Git)](https://github.com/RebornOS-Team/rebornos-ukui-skel/actions/workflows/pre_release.yml/badge.svg)](https://github.com/RebornOS-Team/rebornos-ukui-skel/actions/workflows/pre_release.yml)

Skeleton for `/home`, used for configuring **RebornOS UKUI**.

## 1. Clone this repository

In order to download the source code to your local computer for testing, or for development, you can clone from the remote repository using either SSH, or HTTPS. Below are instructions on how to do so using GitHub hosted code as remote.

### HTTPS

```bash
git clone https://github.com/rebornos-team/rebornos-ukui-skel.git

cd rebornos-ukui-skel
```

### SSH

```bash
git clone git@github.com:rebornos-team/rebornos-ukui-skel.git

cd rebornos-ukui-skel
```

## 2. Copy Settings to Keyfile

1. On a model target system (like a ukui VM), modify the settings you want to change.
2. Dump the system settings to a temporary keyfile: `dconf dump / > /tmp/settings.ini`
3. In the above file, keep only the settings you want the skel config to have, and remove everything else. Save it.
4. Transfer the contents of the above file to the [keyfile](src/keyfiles/settings.ini) in your project directory.

## AND/OR 3. Modify the Keyfile directly

Edit the [keyfile](src/keyfiles/settings.ini) in your project directory.

## 4. Packaging

Change to the project directory (`cd rebornos-ukui-skel`) and run any of the below scripts:
- `sh packaging/setup.sh <MODE>`: Builds and installs a package
- `sh packaging/build-package.sh <MODE>`: Just builds a package without installing it locally
- `sh packaging/install-package.sh <MODE>`: Just installs a package locally, except if no built package is detected, a package is built.

- where `<MODE>` can be one of the below
     1. `local`: Selects *rebornos-ukui-skel-local* from the local project that you have cloned already.
     2. `git`: Selects *rebornos-ukui-skel-git* from the latest git commit.
     3. `stable`: Selects *rebornos-ukui-skel* from the git tag corresponding to the [`pkgver` specified in the PKGBUILD](https://github.com/RebornOS-Team/rebornos-ukui-skel/blob/main/packaging/rebornos-ukui-skel/PKGBUILD#L5). If `pkgver=1.1.1`, then the git tag `v1.1.1` is used for packaging. 
     
> **Note**: Any additional parameters passed to the above scripts are automatically sent to `makepkg` or `pacman` (whichever is applicable).
