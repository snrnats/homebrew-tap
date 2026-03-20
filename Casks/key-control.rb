cask "key-control" do
  version "0.1.0"
  sha256 "7eac5f742c394364fbaf0297582e9d06a9c144687ea7259f43234d2af80975c8"

  url "https://github.com/snrnats/key-control/releases/download/v#{version}/KeyControl-#{version}.dmg"
  name "KeyControl"
  desc "Lightweight macOS key remapper — navigation layer via modifier key"
  homepage "https://github.com/snrnats/key-control"

  depends_on macos: ">= :ventura"

  app "KeyControl.app"

  uninstall quit: "com.snrnats.KeyControl"

  zap trash: [
    "~/Library/Application Support/KeyControl",
  ]
end

