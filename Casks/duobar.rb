cask "duobar" do
  version "1.3.2"
  sha256 "18b878391eeab47a53c4ae0b51d10ae0468a8d7d489b5ae056f6cd5281053bae"

  url "https://github.com/Mikeli7666/DuoBar/releases/download/v#{version}/DuoBar-#{version}.dmg"
  name "DuoBar"
  desc "Battery, volume and Wi-Fi status in one menu bar glyph"
  homepage "https://github.com/Mikeli7666/DuoBar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "DuoBar.app"

  zap trash: "~/Library/Preferences/com.mikeli.duobar.plist"
end
