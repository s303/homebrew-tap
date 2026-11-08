cask "termlaunch" do
  version "0.29"
  sha256 "eb6f9874c922f5e037836dcad6c6a19b8d8fdac3119e043a30ddcbe233c07622"

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
