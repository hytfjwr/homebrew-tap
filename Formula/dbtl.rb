class Dbtl < Formula
  desc "Terminal UI for exploring dbt model lineage as ASCII art"
  homepage "https://github.com/hytfjwr/dbtl"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.7.3/dbtl-v0.7.3-aarch64-apple-darwin.tar.gz"
      sha256 "1302f9aa458b012faee6db81ed92a99d0791f2a22d2c31d3da1999b7e4c848db"
    end
    on_intel do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.7.3/dbtl-v0.7.3-x86_64-apple-darwin.tar.gz"
      sha256 "67592410d0a23a1fbb46ef032aadef077b3158be2bdff0dd32486b6d59d2d0de"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.7.3/dbtl-v0.7.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e93f9f4021d6b2e3f2b08a5d9a290240ac9db05b1fdae7d7d7c421f0f34c26ff"
    end
    on_intel do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.7.3/dbtl-v0.7.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "eaf622d26e46e0658309b84993933682c9874270df1c8ad6dac54463c90dbc47"
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
