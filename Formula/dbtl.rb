class Dbtl < Formula
  desc "Terminal UI for exploring dbt model lineage as ASCII art"
  homepage "https://github.com/hytfjwr/dbtl"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.3.2/dbtl-v0.3.2-aarch64-apple-darwin.tar.gz"
      sha256 "0f09816e79c4a22cf42918866c53b9916916fa21302ac95db8a2cccb9a7f85e2"
    end
    on_intel do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.3.2/dbtl-v0.3.2-x86_64-apple-darwin.tar.gz"
      sha256 "a294a11e9b67feb1c46f0d7116e34ce51fbbe2840a21d73eaea9f062d21d33c6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.3.2/dbtl-v0.3.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e931ca4c4729d6f67573729796b21daa7695a8be8f791379029c7b5bddb6e902"
    end
    on_intel do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.3.2/dbtl-v0.3.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a1fbb11f1fe20cf7b34f55e9d41fb307f6e245858c73b5451c6e1fe9f726cf5b"
    end
  end

  def install
    bin.install "dbtl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dbtl --version")
  end
end
