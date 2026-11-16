class Dbtl < Formula
  desc "Terminal UI for exploring dbt model lineage as ASCII art"
  homepage "https://github.com/hytfjwr/dbtl"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.7.1/dbtl-v0.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "c35b1cfabbb3968254f49665f2cd25d7dae0c8fb8e76c7c652d13ef0872c100b"
    end
    on_intel do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.7.1/dbtl-v0.7.1-x86_64-apple-darwin.tar.gz"
      sha256 "d981216e66ca909fe2cad1394fd9d3f90fc6162f36ce444f29c884c22aa70f0b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.7.1/dbtl-v0.7.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e6a9d549564950bedff9f448c9f904fe1e5dac9c957153a420bdab8fc5e9b338"
    end
    on_intel do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.7.1/dbtl-v0.7.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b80ffc3324032219d2422d3f0cbe453029462149712be5612cb7f96b06064596"
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
