class Dbtl < Formula
  desc "Terminal UI for exploring dbt model lineage as ASCII art"
  homepage "https://github.com/hytfjwr/dbtl"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.7.2/dbtl-v0.7.2-aarch64-apple-darwin.tar.gz"
      sha256 "14d7f29f77245005abf8030fa06f2e917005f09b5f66f2894114ca51171f9d7d"
    end
    on_intel do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.7.2/dbtl-v0.7.2-x86_64-apple-darwin.tar.gz"
      sha256 "e268d13f8f154cdc93c4af5691988b2ee061c53d934d2f6000e67393980a29d4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.7.2/dbtl-v0.7.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ee16049394407d8f03df7511a5ce463879a083aab85dfa93e85ee2c3f4a56be1"
    end
    on_intel do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.7.2/dbtl-v0.7.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "71438693dbaa7e0872a4ecc5502bf8e4fd4a8ef7b8c86d116aeb0ab634a1d245"
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
