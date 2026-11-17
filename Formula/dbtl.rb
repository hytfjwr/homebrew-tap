class Dbtl < Formula
  desc "Terminal UI for exploring dbt model lineage as ASCII art"
  homepage "https://github.com/hytfjwr/dbtl"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.7.5/dbtl-v0.7.5-aarch64-apple-darwin.tar.gz"
      sha256 "112587a71b2907bed98538042aa397e9243afed35225507ae6210a4e6e8c41c3"
    end
    on_intel do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.7.5/dbtl-v0.7.5-x86_64-apple-darwin.tar.gz"
      sha256 "f58eb3a7aca61ce9c81341f0d1270fe74679b5dac1deb1307923cf7e9b54ceed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.7.5/dbtl-v0.7.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6037c654b636e700c6f025d4cb2679d545dccde19300836ab17eaf6e6d2c3428"
    end
    on_intel do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.7.5/dbtl-v0.7.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6d28d61247b5b7f794c1247e1cf284940ddaba5f570d2994658fbfc9cc490de8"
    end
  end

  def install
    bin.install "dbtl"
    bash_completion.install "completions/dbtl.bash" => "dbtl"
    zsh_completion.install "completions/_dbtl"
    fish_completion.install "completions/dbtl.fish"
    man1.install "man/dbtl.1"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dbtl --version")
  end
end
