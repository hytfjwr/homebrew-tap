class Dbtl < Formula
  desc "Terminal UI for exploring dbt model lineage as ASCII art"
  homepage "https://github.com/hytfjwr/dbtl"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hytfjwr/dbtl/releases/download/v#{version}/dbtl-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "7cecd4c418c5723e9b11957dc2246f05b361e78cf3b870ff15724a127353f166"
    end
    on_intel do
      url "https://github.com/hytfjwr/dbtl/releases/download/v#{version}/dbtl-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "abb22bd5cb2a23f3e6fe87c6273da31ec0e07035dd5880fc32b955016b0cc86b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hytfjwr/dbtl/releases/download/v#{version}/dbtl-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fffffc6ef963081a421dde38bed47ec730987f6451678f36bb8432fb54dca55f"
    end
    on_intel do
      url "https://github.com/hytfjwr/dbtl/releases/download/v#{version}/dbtl-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2f9eb7cdf82fcdf501e162e59b2ff9c53d625b74991a1d1b5ecdc9b98da7b186"
    end
  end

  def install
    bin.install "dbtl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dbtl --version")
  end
end
