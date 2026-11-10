class Dbtl < Formula
  desc "Terminal UI for exploring dbt model lineage as ASCII art"
  homepage "https://github.com/hytfjwr/dbtl"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.5.2/dbtl-v0.5.2-aarch64-apple-darwin.tar.gz"
      sha256 "593d1220d324e6cabed34112fe124c0083dc3c65231b6da3a8bd2ce3bf7f5bcb"
    end
    on_intel do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.5.2/dbtl-v0.5.2-x86_64-apple-darwin.tar.gz"
      sha256 "0e0eaf145343d12e7c8920944b4b652597e0001fd8acbad91a45234aa506f5f7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.5.2/dbtl-v0.5.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a0cebe703186a3347817b65d5cc85c80c2e4d9d3089310eb29a2a8ee4d18a1b6"
    end
    on_intel do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.5.2/dbtl-v0.5.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b5665915a7bf110f5214656634aeb94e56c18515e152ae6bd8d539b1ebf1040c"
    end
  end

  def install
    bin.install "dbtl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dbtl --version")
  end
end
