cask "appswitcher" do
  version "0.2.14"
  sha256 "51648ace1e83e693b89c73aa7168ba6285cc0ab9ac17b9170a723040ea8bc1fa"

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
