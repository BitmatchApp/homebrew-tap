cask "bitmatch" do
  version "0.2.2"
  sha256 "147025806d5e6200c72123371b2289a3bfe61d99cb887e7a1130da8988b9b723"

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
