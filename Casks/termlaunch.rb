cask "termlaunch" do
  version "0.21"
  sha256 "224709209d1ea47040fa3bd3e28427a6f006041ce2f42bbacaf7ad17ad8d3e07"

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
