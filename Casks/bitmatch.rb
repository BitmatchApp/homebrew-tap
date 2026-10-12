cask "bitmatch" do
  version "0.2.9"
  sha256 "2a2a500883e0103da9e3b7b80228f416bdefa50cf3ba7e570eb334ac9811f2e9"

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
