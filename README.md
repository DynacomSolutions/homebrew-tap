# Dynacom Homebrew Tap

```sh
brew install --cask dynacomsolutions/tap/appswitcher
```

Requires a license key to activate — see [AppSwitcher's download page](https://download.apps.dynacom.dev/).

Installing this way (rather than downloading the `.dmg` directly) avoids
macOS Gatekeeper's "unidentified developer" warning — the app isn't
notarized yet, but Homebrew Cask clears the quarantine flag as part of a
normal install, so there's no right-click/`xattr` step needed.

To update the cask after a new release:

1. Upload the new build to R2 with a version-specific filename (Homebrew's
   audit requires a versioned URL to pin a `sha256` against, rather than an
   in-place-updated one):
   ```sh
   npx wrangler r2 object put appswitcher-downloads/AppSwitcher-<version>.dmg \
     --file=<path-to-dmg> --content-type="application/x-apple-diskimage" --remote
   ```
2. Bump `version` and `sha256` (`shasum -a 256 <dmg>`) in `Casks/appswitcher.rb`.
3. Optionally also overwrite `appswitcher-downloads/AppSwitcher.dmg` (the
   stable filename the direct-download button on the download page links
   to) with the same file.
