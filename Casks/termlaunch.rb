cask "termlaunch" do
  version "0.25"
  sha256 "d5ea1fcf4630c52b79ac98f6d58a45a062cd466027558ad418d8e7888075d30c"

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
