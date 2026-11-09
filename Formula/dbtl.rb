class Dbtl < Formula
  desc "Terminal UI for exploring dbt model lineage as ASCII art"
  homepage "https://github.com/hytfjwr/dbtl"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.5.0/dbtl-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "4b1a9b04cf5c29399d5c7d7b95b3c63a3e0724719da1dbf4d83cea43a8e759e5"
    end
    on_intel do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.5.0/dbtl-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "8e087e940b3744369e6fb213c80e49bbb9d6c3e58f65ecd951d7bec9b83cb12c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.5.0/dbtl-v0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "385dc8ac0e6ae4831a7f4fb4db44a9395dc0feeb5ab5531cac864d3fac88c857"
    end
    on_intel do
      url "https://github.com/hytfjwr/dbtl/releases/download/v0.5.0/dbtl-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "96357482cd9ec5bf8bf308dd72bbef58c2bfa3217b833588159a01096e2c1fb6"
    end
  end

  def install
    bin.install "dbtl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dbtl --version")
  end
end
