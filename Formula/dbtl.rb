class Dbtl < Formula
  desc "Terminal UI for exploring dbt model lineage as ASCII art"
  homepage "https://github.com/hytfjwr/dbtl"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.1.3/dbtl-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "9cef61f22685069d9982be1b00ce3dadfc5b68d9b2e047241b7ea502a48fd6de"
    end
    on_intel do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.1.3/dbtl-v0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "9acce11332acc07ec9691534c746f3417fba8b5b0ab9f1ca0411bf956645f8db"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.1.3/dbtl-v0.1.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8d4669330764102129e1ab481c5c6b567873a2931a8ebc5780bb4dbb168f7b5c"
    end
    on_intel do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.1.3/dbtl-v0.1.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4da30f66caaefec196bf1571d0e9c7d9ea07776dab80b1bb91457c67cabee5dc"
    end
  end

  def install
    bin.install "dbtl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dbtl --version")
  end
end
