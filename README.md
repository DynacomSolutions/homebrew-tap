# Dynacom Homebrew Tap

```sh
brew install --cask dynacomsolutions/tap/appswitcher
```

Requires a license key to activate — see [AppSwitcher's download page](https://download.apps.dynacom.dev/).

Installing this way (rather than downloading the `.dmg` directly) avoids
macOS Gatekeeper's "unidentified developer" warning — the app isn't
notarized yet, but Homebrew Cask clears the quarantine flag as part of a
normal install, so there's no right-click/`xattr` step needed.

To update the cask after a new release, bump `version`/`sha256` in
`Casks/appswitcher.rb` (`shasum -a 256 AppSwitcher.dmg`).
