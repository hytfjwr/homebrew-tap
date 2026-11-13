class Dbtl < Formula
  desc "Terminal UI for exploring dbt model lineage as ASCII art"
  homepage "https://github.com/hytfjwr/dbtl"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.6.3/dbtl-v0.6.3-aarch64-apple-darwin.tar.gz"
      sha256 "34201907c675c967ffccc6a21af7ed5b6590bdbf2da681753ab6d69acc52fbc4"
    end
    on_intel do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.6.3/dbtl-v0.6.3-x86_64-apple-darwin.tar.gz"
      sha256 "995204ac6c54ec9c80b339a1bfe15777f6ce4eb408121e44985ff83d02d13d7b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.6.3/dbtl-v0.6.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a2b96c1a06951ccf24a0aefde7ae8d8a14e7341858f7bbcb5ae3077a312754bf"
    end
    on_intel do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.6.3/dbtl-v0.6.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6df5cd1d4e9587fa90ead28723746dd2581f6a60ce0d7a587b2e485953a71ae0"
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
