class Dbtl < Formula
  desc "Terminal UI for exploring dbt model lineage as ASCII art"
  homepage "https://github.com/hytfjwr/dbtl"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.5.1/dbtl-v0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "f14d3a64bbc6c1be2bd49925703e2415281615115d32e3ccab73b28f76be9419"
    end
    on_intel do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.5.1/dbtl-v0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "28cdf28c2689ac58bbce021b2c02f4a2350f8037943fd0f48bbc957bcffe7715"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.5.1/dbtl-v0.5.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "433108e9e9c6b087a57ca1838e17979ce50ce642735a8894ad66bd92d0d6fb39"
    end
    on_intel do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.5.1/dbtl-v0.5.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b6b53043db5c5f38792275ec411017ee03cd1fa641ae12cc99a6a5b062bea959"
    end
  end

  def install
    bin.install "dbtl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dbtl --version")
  end
end
