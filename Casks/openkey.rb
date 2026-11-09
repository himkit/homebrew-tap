cask "openkey" do
  version "2.0.6"
  sha256 "31f2286eb1372eac368056ae559712bcda05dcdf36c2c3261a259b7dd5be6be9"

  url "https://github.com/himkit/OpenKey/releases/download/v2.0.6/OpenKey-2.0.6.zip"
  name "OpenKey"
  desc "Vietnamese input method for macOS (event-tap-recovery build)"
  homepage "https://github.com/himkit/OpenKey"

  app "OpenKey.app"

  caveat <<~EOS
    This is an ad-hoc signed build. To avoid the Gatekeeper "damaged"
    warning, install with --no-quarantine:

      brew install --cask --no-quarantine himkit/tap/openkey

    After installing, grant Accessibility permission once:
      System Settings → Privacy & Security → Accessibility → enable OpenKey.
  EOS

  zap trash: [
    "~/Library/Preferences/com.tuyenmai.openkey.plist",
  ]
end
