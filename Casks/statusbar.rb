cask "statusbar" do
  version "0.17.2"
  sha256 "ac2fba07459d7adcf3afa3dfff13d046d6bb35cd4efaee64b06efa3ede3c5ec0"

  url "https://github.com/hytfjwr/StatusBar/releases/download/v#{version}/StatusBar.zip"
  name "StatusBar"
  desc "Swift-native custom status bar"
  homepage "https://github.com/hytfjwr/StatusBar"

  depends_on macos: :tahoe

  app "StatusBar.app"
  binary "#{appdir}/StatusBar.app/Contents/MacOS/sbar"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/StatusBar.app"]
  end

  zap trash: "~/.config/statusbar"
end
