cask "appswitcher" do
  version "0.2.0"
  sha256 "e0303f329ac4d7b6a5a4ea0a49e9d0aa11dcc5dd71262cb5f9ad36ceac578afd"

  url "https://download.apps.dynacom.dev/appswitcher/AppSwitcher-#{version}.dmg"
  name "AppSwitcher"
  desc "Multi-level, customisable Alt+Tab switcher for macOS"
  homepage "https://download.apps.dynacom.dev/appswitcher"

  depends_on macos: :ventura
  depends_on arch: :arm64

  app "AppSwitcher.app"

  zap trash: [
    "~/Library/Application Support/com.dynacom.appswitcher",
    "~/Library/Preferences/com.dynacom.appswitcher.plist",
  ]
end
