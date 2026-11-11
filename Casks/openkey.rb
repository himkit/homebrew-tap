cask "openkey" do
  version "2.0.7"
  sha256 "d64b1f05731b35569807b08aff553f84f3df2a316d6a4a2cdee8a460ce099dde"

  url "https://github.com/himkit/openkey-macos/releases/download/v#{version}/OpenKey-#{version}.zip"
  name "OpenKey"
  desc "Vietnamese input method (fork with event-tap and terminal fixes)"
  homepage "https://github.com/himkit/openkey-macos"

  app "OpenKey.app"

  zap trash: [
    "~/Library/Preferences/com.tuyenmai.openkey.plist",
  ]
end
