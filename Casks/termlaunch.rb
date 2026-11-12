cask "termlaunch" do
  version "0.30"
  sha256 "6519cc7d4951321f85200fa201de1a236719f3921befa2ad25787355b46fe381"

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
