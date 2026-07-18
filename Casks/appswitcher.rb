cask "appswitcher" do
  version "0.2.0"
  sha256 "2e75078ccb1a3c822de35babe6207247ab7d3bac42f575e9d8e517810fa1eaf6"

  url "https://download.apps.dynacom.dev/AppSwitcher.dmg"
  name "AppSwitcher"
  desc "Multi-level, customisable Alt+Tab switcher for macOS"
  homepage "https://download.apps.dynacom.dev/"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "AppSwitcher.app"

  zap trash: [
    "~/Library/Application Support/com.dynacom.appswitcher",
    "~/Library/Preferences/com.dynacom.appswitcher.plist",
  ]
end
