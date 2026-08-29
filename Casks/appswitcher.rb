cask "appswitcher" do
  version "0.2.15"
  sha256 "d4d11d4dd1a2b9fd279563cb19e91ba405d6c78ff76d3dd9c3a3e7ac8ad406bc"

  url "https://dynacom.studio/download/appswitcher/AppSwitcher-#{version}.dmg"
  name "AppSwitcher"
  desc "Multi-level, customisable Alt+Tab switcher for macOS"
  homepage "https://dynacom.studio/download/appswitcher"

  depends_on macos: :ventura
  depends_on arch: :arm64

  app "AppSwitcher.app"

  zap trash: [
    "~/Library/Application Support/com.dynacom.appswitcher",
    "~/Library/Preferences/com.dynacom.appswitcher.plist",
  ]
end
