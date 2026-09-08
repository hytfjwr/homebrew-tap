cask "statusbar" do
  version "0.20.0"
  sha256 "054863a933c29b430ea48d608c6cd1774a4d19a70709938e2e385b08f17ec58d"

  url "https://github.com/hytfjwr/StatusBar/releases/download/v#{version}/StatusBar.zip"
  name "StatusBar"
  desc "Swift-native custom status bar"
  homepage "https://github.com/hytfjwr/StatusBar"

  depends_on macos: :tahoe

  app "StatusBar.app"
  binary "#{appdir}/StatusBar.app/Contents/MacOS/sbar"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/StatusBar.app"]
  end

  zap trash: "~/.config/statusbar"
end
