class Dbtl < Formula
  desc "Terminal UI for exploring dbt model lineage as ASCII art"
  homepage "https://github.com/hytfjwr/dbtl"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.6.4/dbtl-v0.6.4-aarch64-apple-darwin.tar.gz"
      sha256 "b110fc6c08510cd3682932829717f62aa218d7f6e2c04517b08e7d4928923968"
    end
    on_intel do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.6.4/dbtl-v0.6.4-x86_64-apple-darwin.tar.gz"
      sha256 "78eb27eacc1bb674399c294fe5ea4258dec518ed933174addd326672329a22f7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.6.4/dbtl-v0.6.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d1067ed689edb71c051825a60e423cc3e9e452d00fb3e90dc2ea2730c5d58cfa"
    end
    on_intel do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.6.4/dbtl-v0.6.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ef90194ab4f9ddff1b48a965cc0431c953e23b1859d015aaa1aa5adc9e5381da"
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
