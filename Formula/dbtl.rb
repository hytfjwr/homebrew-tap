class Dbtl < Formula
  desc "Terminal UI for exploring dbt model lineage as ASCII art"
  homepage "https://github.com/hytfjwr/dbtl"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.1.2/dbtl-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "a807f2e90e9de912fbdd690072da28e2a1511649d7fcbf3a541cdbbc0f109649"
    end
    on_intel do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.1.2/dbtl-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "671307622575289eba578078db6af89c4d2d4ef27794a588caa86e63d82db778"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.1.2/dbtl-v0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3c81947ba08814dec2b0164d10b51836e1adc5c65fb8d17043ecb8e022f6395e"
    end
    on_intel do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.1.2/dbtl-v0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2226c6300b567f00b326a884e58d03bfb4f8053c50c62b0c3f8b2afc039ea312"
    end
  end

  def install
    bin.install "dbtl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dbtl --version")
  end
end
