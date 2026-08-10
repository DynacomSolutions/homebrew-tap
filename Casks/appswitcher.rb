cask "appswitcher" do
  version "0.2.4"
  sha256 "75cf2e09f61d74a974baae978da3e0428615d700ccce9176218bef0e1f371235"

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
