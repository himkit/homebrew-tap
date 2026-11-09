cask "openkey" do
  version "2.0.6"
  sha256 "31f2286eb1372eac368056ae559712bcda05dcdf36c2c3261a259b7dd5be6be9"

  url "https://github.com/himkit/OpenKey/releases/download/v2.0.6/OpenKey-2.0.6.zip"
  name "OpenKey"
  desc "Vietnamese input method for macOS (event-tap-recovery build)"
  homepage "https://github.com/himkit/OpenKey"

  app "OpenKey.app"

  zap trash: [
    "~/Library/Preferences/com.tuyenmai.openkey.plist",
  ]
end
