cask "appswitcher" do
  version "0.2.9"
  sha256 "a478dbea5476ef9fb61a8638613f9c8b454196d601779b9be51c46d18058a649"

  url "https://download.apps.dynacom.dev/appswitcher/AppSwitcher-#{version}.dmg"
  name "AppSwitcher"
  desc "Multi-level, customisable Alt+Tab switcher for macOS"
  homepage "https://download.apps.dynacom.dev/appswitcher"

  depends_on macos: :ventura
  depends_on arch: :arm64

  app "AppSwitcher.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/AppSwitcher.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.dynacom.appswitcher",
    "~/Library/Preferences/com.dynacom.appswitcher.plist",
  ]
end
