class Dbtl < Formula
  desc "Terminal UI for exploring dbt model lineage as ASCII art"
  homepage "https://github.com/hytfjwr/dbtl"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.2.0/dbtl-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "f5db94baea30ab0bb360fea3f503aa43a8da83fe9049d2a2e803594dcd981096"
    end
    on_intel do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.2.0/dbtl-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "b301b981e60abc479300309be0e4741cafc7c0c2c0c9f7bfcd5ea1e165bf36c7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.2.0/dbtl-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "beb65eec498062c87be9115c5dae9a6e1b2cc9647e7404aacccc8363c4b05b8a"
    end
    on_intel do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.2.0/dbtl-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e265b9eecba8b26ed1930d3a0b3ab48fead25926626fc6299be16caa601a1787"
    end
  end

  def install
    bin.install "dbtl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dbtl --version")
  end
end
