cask "termlaunch" do
  version "0.26"
  sha256 "621538971f68be767ca0a0aa81e88673d8a7fa9cd4ff6b7f024c69db68eb6032"

  url "https://github.com/s303/TermLaunch/releases/download/v#{version}/TermLaunch-#{version}-arm64.zip"
  name "TermLaunch"
  desc "Resident terminal with a global hotkey dropdown"
  homepage "https://github.com/s303/TermLaunch"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "TermLaunch.app"

  zap trash: [
    "~/.config/termlaunch",
  ]
end
