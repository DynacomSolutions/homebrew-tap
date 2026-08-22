cask "appswitcher" do
  version "0.2.13"
  sha256 "31c2093f24c976c5e7b11775857a089677c64b7801cc2dcd21ac48bbab0224e3"

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
