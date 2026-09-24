class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "234.1+ec69c221"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "dbf69ff2e0f999d99ccff4f384ff1b179f493a2d84e8cb99940dceefda151af0"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "75d25155c6ad0ff3318111f57853c8776b361623354419322356d714c7a4ab23"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "02eb00c5ce0f4eaf8e65b14afe6d0108a4ef1a8fab2e8a696d0a30de9bd7e9d0"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "795bfe6ca68d3ea1492a8bfa2ece4b0fb4d6b5a747c1c6ec2b461ed1bba15fff"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
