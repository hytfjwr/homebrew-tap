class Dbtl < Formula
  desc "Terminal UI for exploring dbt model lineage as ASCII art"
  homepage "https://github.com/hytfjwr/dbtl"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.3.1/dbtl-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "d84e379322726499d0164fe74f111df8f263884eb8dd29e1d51db91a46ccc789"
    end
    on_intel do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.3.1/dbtl-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "82f64bd1693afe5c62f08b32243ad251cf9a19b79609b748418aef40c191f507"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.3.1/dbtl-v0.3.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4ffe5af596b2937d8b78da504753f8ccf0f8921b8baac5cbbfe4f8ec722bda89"
    end
    on_intel do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.3.1/dbtl-v0.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "937e4aeb06d2f5720ca1edd5f0e2a33d27c485995846f917525775e47c8edbe6"
    end
  end

  def install
    bin.install "dbtl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dbtl --version")
  end
end
