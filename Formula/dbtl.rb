class Dbtl < Formula
  desc "Terminal UI for exploring dbt model lineage as ASCII art"
  homepage "https://github.com/hytfjwr/dbtl"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.6.1/dbtl-v0.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "bbadacb78cbe3c25b79093f636fd0379d4850a45693656ce581564f0d8f664a4"
    end
    on_intel do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.6.1/dbtl-v0.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "b267e580db1e0fd643df936c110c124db9c8193d6a5f417e2dedd3951550f569"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.6.1/dbtl-v0.6.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "eb61e84c6af72253a5cee11f034e219fb24383bce61cb2670e886533bb3b47f1"
    end
    on_intel do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.6.1/dbtl-v0.6.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c1746ff52fb0e93a90f7390f6f4aa3a11b9343c75095d40c6736452dd61a7b00"
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
