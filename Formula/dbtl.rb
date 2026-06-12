class Dbtl < Formula
  desc "Terminal UI for exploring dbt model lineage as ASCII art"
  homepage "https://github.com/hytfjwr/dbtl"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.2.1/dbtl-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "721cca28a3b089d0a88cef6df15a7d128277b766954d600e745ea12406ad0839"
    end
    on_intel do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.2.1/dbtl-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "c1ca888dd39ca6b8ce9d5ef290e92a3b29589c0f7a048837dc58db1461895778"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.2.1/dbtl-v0.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cc37567dabbbbced9938a68dd9e03331d0ab5fddc40c2d1f2a918cfc7117383a"
    end
    on_intel do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.2.1/dbtl-v0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8caa4c36e32cadf65f9c0508eb3fb94cc7041ec4a8924d91a43212eefd1dfb3c"
    end
  end

  def install
    bin.install "dbtl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dbtl --version")
  end
end
