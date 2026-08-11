cask "appswitcher" do
  version "0.2.8"
  sha256 "0b2ece2c715f80a979576648f3f150f880ba5512938327328692b89a4b6358f7"

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
