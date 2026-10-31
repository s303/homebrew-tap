cask "termlaunch" do
  version "0.1"
  sha256 "64f923e5aa1ccd7535472df6d2b246ad150e1844ac525728653319cb02c5f76d"

  url "https://github.com/s303/TermLaunch/releases/download/v#{version}/TermLaunch-#{version}-arm64.zip"
  name "TermLaunch"
  desc "Resident terminal with a global hotkey dropdown"
  homepage "https://github.com/s303/TermLaunch"

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "TermLaunch.app"

  zap trash: [
    "~/.config/termlaunch",
  ]
end
