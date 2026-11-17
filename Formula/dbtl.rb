class Dbtl < Formula
  desc "Terminal UI for exploring dbt model lineage as ASCII art"
  homepage "https://github.com/hytfjwr/dbtl"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.7.4/dbtl-v0.7.4-aarch64-apple-darwin.tar.gz"
      sha256 "51ece8e6ce89248c0bf9fa94b7ceb9e19ef41ab6d581034b6c2636fd2e5fb38e"
    end
    on_intel do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.7.4/dbtl-v0.7.4-x86_64-apple-darwin.tar.gz"
      sha256 "945cf1340912fd5d4f50f1dbffdfe57b8af0f5501cb39d8c84c6ddd9aca4635a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.7.4/dbtl-v0.7.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "84e194e851692020c159082d03c791af600fb02ddfe7276ff9567a529dfa2b75"
    end
    on_intel do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.7.4/dbtl-v0.7.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "149f92681eb48b62e8ec20a8032753bbff482a6b01a7ad02f0c66b22d5f40552"
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
