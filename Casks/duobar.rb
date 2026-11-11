cask "duobar" do
  version "1.4.1"
  sha256 "cb463c7647bbc13d25243e4e12e4f050adc9565219a8251609a8f2ca356d1925"

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
