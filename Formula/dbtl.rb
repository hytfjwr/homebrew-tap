class Dbtl < Formula
  desc "Terminal UI for exploring dbt model lineage as ASCII art"
  homepage "https://github.com/hytfjwr/dbtl"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.6.2/dbtl-v0.6.2-aarch64-apple-darwin.tar.gz"
      sha256 "63f579e25d7f4412cef4583d4b0449cf25f96cc471ca6f5a1d74f0fa4573119e"
    end
    on_intel do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.6.2/dbtl-v0.6.2-x86_64-apple-darwin.tar.gz"
      sha256 "98c3737b4774dc1001578be10dc8f60d96f82e6da13861d822e20e72cf7a5d5f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.6.2/dbtl-v0.6.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4d13f49a2bc1fb5055e64cfee222b722eed7818c39d424ad9ed7ccc26f2956b1"
    end
    on_intel do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.6.2/dbtl-v0.6.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "72fe7904d13b111a18da2c2197269ae79462cb53aa6157ea2cf73b8ea5c701c9"
    end
  end

  def install
    bin.install "dbtl"
    bash_completion.install "completions/dbtl.bash" => "dbtl"
    zsh_completion.install "completions/_dbtl"
    fish_completion.install "completions/dbtl.fish"
    man1.install "man/dbtl.1"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dbtl --version")
  end
end
