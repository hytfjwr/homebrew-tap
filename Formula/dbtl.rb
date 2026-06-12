class Dbtl < Formula
  desc "Terminal UI for exploring dbt model lineage as ASCII art"
  homepage "https://github.com/hytfjwr/dbtl"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.2.2/dbtl-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "37d1a56ae9830e951f13f40ec0ee150a151290f6bd0c7c3acc0547da76c44c21"
    end
    on_intel do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.2.2/dbtl-v0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "8c14b6ec3138ebde6581f41115b4dbde66d20caa045540968f15bcd0124230f0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.2.2/dbtl-v0.2.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cc155efef59159f0f416eb011581f0efd0402c6077fac6cb2a299a569f484aa6"
    end
    on_intel do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.2.2/dbtl-v0.2.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4433460c5758ff5cb9ecdf323a4ee0248130a17b66ba59c539b90e90558ad2e7"
    end
  end

  def install
    bin.install "dbtl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dbtl --version")
  end
end
