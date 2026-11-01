cask "termlaunch" do
  version "0.2"
  sha256 "235cb7345a7c1840419897f229a7621b56f3d63b0d458f555f5f3b94b6178b78"

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
