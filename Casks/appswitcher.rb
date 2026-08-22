cask "appswitcher" do
  version "0.2.12"
  sha256 "7713e2949bc7e8782c516379f0033d9cc18cf3aa5c34f577bd8c3526c25365a0"

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
