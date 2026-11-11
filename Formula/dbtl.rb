class Dbtl < Formula
  desc "Terminal UI for exploring dbt model lineage as ASCII art"
  homepage "https://github.com/hytfjwr/dbtl"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.5.3/dbtl-v0.5.3-aarch64-apple-darwin.tar.gz"
      sha256 "dbdc6ab8e92332c0db5719a85ecc3a3339531b103cf5dc2f443384f99ecce69e"
    end
    on_intel do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.5.3/dbtl-v0.5.3-x86_64-apple-darwin.tar.gz"
      sha256 "9ea1abf45fd5039547c375b2e517fa4bca8c2b43e15bc6293d69d1fd76911e4d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.5.3/dbtl-v0.5.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bf1012f7c7c6a4fd5838c756b622bb7b3abfec3e140b52e9cdde048c6a9d3d8e"
    end
    on_intel do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.5.3/dbtl-v0.5.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a258a1c5371e70c71fc8a66ddddd14f8c2ba58d8b246587c73c768c4eb63007b"
    end
  end

  def install
    bin.install "dbtl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dbtl --version")
  end
end
