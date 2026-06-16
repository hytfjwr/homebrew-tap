cask "statusbar" do
  version "0.18.1"
  sha256 "f8be0c80ee313242361b2de2f24fcfee81afeddc3c4d79e7a04ab6f04a9445fd"

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
