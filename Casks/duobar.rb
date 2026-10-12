cask "duobar" do
  version "1.3.1"
  sha256 "b9bfb9dea85a4bd8d81121567427b23c1a8aca8d7f16ad7f7cfeb50e1937747f"

  url "https://github.com/Mikeli7666/DuoBar/releases/download/v#{version}/DuoBar-#{version}.dmg"
  name "DuoBar"
  desc "Battery, volume and Wi-Fi status in one macOS menu bar glyph"
  homepage "https://github.com/Mikeli7666/DuoBar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "DuoBar.app"

  zap trash: [
    "~/Library/Preferences/com.mikeli.duobar.plist",
  ]
end
