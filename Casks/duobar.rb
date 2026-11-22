cask "duobar" do
  version "1.4.2"
  sha256 "97c1e565f07944ca94884ebefc30a93afaa6b6a6e1fb28d70e2d01081a7cbfef"

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
