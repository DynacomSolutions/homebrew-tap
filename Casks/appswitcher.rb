cask "appswitcher" do
  version "0.2.11"
  sha256 "b09f12d8721097f43ee06f17a876628b387e40b7c689bb7acd201aca81cd8839"

  url "https://dynacom.studio/download/appswitcher/AppSwitcher-#{version}.dmg"
  name "AppSwitcher"
  desc "Multi-level, customisable Alt+Tab switcher for macOS"
  homepage "https://dynacom.studio/download/appswitcher"

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
