cask "bitmatch" do
  version "0.2.4"
  sha256 "f5f076b1a7ea52bc3e30549eb33a6df58d4d3d38cce5e3733414c5176e94644b"

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
