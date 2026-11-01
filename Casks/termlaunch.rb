cask "termlaunch" do
  version "0.22"
  sha256 "7e7072cdd2ae0a21025eec7745ba01507a3a835d1c78149c9618da2f2e0efb52"

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
