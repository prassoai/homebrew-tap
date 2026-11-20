class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "318.3+6c6949e4"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "c2d8bd90708ced7579263880cb5d1c03742fd06a84e879ceb4e340084d6f2823"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "36cfdb0e7fe97ffcef5c03788a954ca63e125bdef6afdb9b594d6ab1e9737bc7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "714f29ba26fb7b0d46f862f74f40f692a3efc889fcabe04909f2cf1617c49a44"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "e56f3f36f68fd4e546c87c9e84aa7d42c1e199f53ad8c7aea8115ad4f33e3e17"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
