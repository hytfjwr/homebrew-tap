class Dbtl < Formula
  desc "Terminal UI for exploring dbt model lineage as ASCII art"
  homepage "https://github.com/hytfjwr/dbtl"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.6.0/dbtl-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "b95163a23777d5ccc15118baf40ef1309884948a9d77353170ac4dbe7c32e847"
    end
    on_intel do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.6.0/dbtl-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "bdecbff4e21bfdd6a22e04ffe2e215722ac3ab13928e970336d38471483d9fdc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.6.0/dbtl-v0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "381bd41699e44cc1feec72485adedf78f2e5ba06db3263aa0de87c53e9d40a08"
    end
    on_intel do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.6.0/dbtl-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bf3fff06e76360907d516c72774935582819edc93c1c7a1aeb40681b270e25ca"
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
