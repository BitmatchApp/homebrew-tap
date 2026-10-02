cask "bitmatch" do
  version "0.2.3"
  sha256 "1408c1c5ce5026e707f860d4db2a16143d7cb18df92e25c15e4d204e90ba9ffc"

  url "https://github.com/BitmatchApp/Bitmatch/releases/download/v#{version}/BitMatch-#{version}.dmg"
  name "BitMatch"
  desc "Offload camera cards to several drives and verify every file with SHA-256"
  homepage "https://github.com/BitmatchApp/Bitmatch"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "BitMatch.app"

  zap trash: [
    "~/Library/Application Scripts/BitMatchApp.BitMatch",
    "~/Library/Containers/BitMatchApp.BitMatch",
  ]
end
