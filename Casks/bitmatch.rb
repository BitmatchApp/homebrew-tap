cask "bitmatch" do
  version "0.2.0"
  sha256 "6d13e8d38e264211d9569d0353e9dd3ad4ca02d5f10c1579e825feea3219e939"

  url "https://github.com/BitmatchApp/Bitmatch/releases/download/v#{version}/BitMatch-#{version}.dmg"
  name "BitMatch"
  desc "Offload camera cards to several drives and verify every file with SHA-256"
  homepage "https://github.com/BitmatchApp/Bitmatch"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "BitMatch.app"

  zap trash: [
    "~/Library/Application Scripts/BitMatchApp.BitMatch",
    "~/Library/Containers/BitMatchApp.BitMatch",
  ]
end
