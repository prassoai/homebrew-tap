class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "229.5+d7a043e8"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "1f1a2f55b86e6d4b2faa6cdcf0d7c5b62ceb1e6e1e11ec241753d6589703d534"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "fc3b039f045dbeaeed853d32be851cbf0a08ef81f8c0b764abdb1f1e5e4a1955"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "31d5d88a10e236db9f970be7cb623b66f4878ae0017120c06ca2532d5044c3b6"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "87e652f828b780a298bc9a0298acaf2f40571386794b583ea0c70adfb88f877d"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
