class Dbtl < Formula
  desc "Terminal UI for exploring dbt model lineage as ASCII art"
  homepage "https://github.com/hytfjwr/dbtl"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.7.0/dbtl-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "20dc0661e54084cc02e2f886a2f2a06c7a4e8b985f2340bde225f6fc859a69f0"
    end
    on_intel do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.7.0/dbtl-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "25f1e603ec6246aadc8a8fac5326d5ada99e21d827bc238b3717af0d9cbf5468"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.7.0/dbtl-v0.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8d39f67d8fff6769185ee6ffbe47adf628f6d03d2a5ecdc3463c80c565bd3d26"
    end
    on_intel do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.7.0/dbtl-v0.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7acf0c667a85e955e43c24402fd2af7b1e970d4f8629ce11e2df0f45f981f189"
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
