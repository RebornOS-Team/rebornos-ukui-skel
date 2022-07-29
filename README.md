# rebornos-mate-skel

## 1. Clone this repository

In order to download the source code to your local computer for testing, or for development, you can clone from the remote repository using either SSH, or HTTPS. Below are instructions on how to do so using Gitlab hosted code as remote.

### HTTPS

```bash
git clone https://gitlab.com/rebornos-team/rebornos-packages/mate-packages/rebornos-mate-skel.git

cd rebornos-mate-skel
```

### SSH

```bash
git clone git@gitlab.com:rebornos-team/rebornos-packages/mate-packages/rebornos-mate-skel.git

cd rebornos-mate-skel
```

## 2. Copy Settings to Keyfile

1. On a model target system (like a MATE VM), modify the settings you want to change.
2. Dump the system settings to a temporary keyfile: `dconf dump / > /tmp/settings.ini`
3. In the above file, keep only the settings you want the skel config to have, and remove everything else. Save it.
4. Transfer the contents of the above file to `scripts/keyfile/settings.ini` in your project directory.
5. Verify the settings by running the display script
```sh
sh scripts/display.sh
```

## OR 2. Modify the Keyfile directly

1. Edit the keyfile `scripts/keyfile/settings.ini` in your project directory.

2. Verify the settings by running the display script 
```sh
sh scripts/display.sh
```

## 3. Update the local Dconf Database

```sh
sh scripts/update.sh
```

## 4. Build the Package

1. Change the version and edit the `PKGBUILD` file for other changes.

2. Build the package.
```sh
sh scripts/build_package.sh
```
