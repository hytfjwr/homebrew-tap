class Dbtl < Formula
  desc "Terminal UI for exploring dbt model lineage as ASCII art"
  homepage "https://github.com/hytfjwr/dbtl"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.2.3/dbtl-v0.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "762183114e03afb97f148df57d8128ae06759fc6b4ac50ad7c15289906900d4c"
    end
    on_intel do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.2.3/dbtl-v0.2.3-x86_64-apple-darwin.tar.gz"
      sha256 "f7164f1eafe78e61386d6b8d21e415ccbcfd0ff8c2b3f402e8c01f46ce704e34"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.2.3/dbtl-v0.2.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7a67db9e0f7f1b378a9ecb0454cc13cdbcc89975ec83c610813613d7dfd1d6a0"
    end
    on_intel do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.2.3/dbtl-v0.2.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4f720db1b783720ad55568bf0928e409dd0903b0386b9099fc33cdd831c2cf8c"
    end
  end

  def install
    bin.install "dbtl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dbtl --version")
  end
end
