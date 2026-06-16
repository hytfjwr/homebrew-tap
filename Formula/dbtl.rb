class Dbtl < Formula
  desc "Terminal UI for exploring dbt model lineage as ASCII art"
  homepage "https://github.com/hytfjwr/dbtl"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.3.0/dbtl-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "4cafca80e4ceffbf68ebf96ba3eeaa21ba764967e3442597d91688791ae7fc0d"
    end
    on_intel do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.3.0/dbtl-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "5b25e1bac8bf28e8b058d3e8da21de33d8b728eba681ab1cd6c0d8a19c8faede"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.3.0/dbtl-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "832aea4ac0753f08560c1168dc025d6939a9a7b0080b303ad21e698501a2a127"
    end
    on_intel do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.3.0/dbtl-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "64954f8f0fb1b77e5743bd1bdf04d66854e13ad8d8050a926fe74fcb11b28a8e"
    end
  end

  def install
    bin.install "dbtl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dbtl --version")
  end
end
