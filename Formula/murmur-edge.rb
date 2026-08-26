class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "218.0+5c92276b"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "5b5beb785003e83fd1668f7f314543ba9be05518a90c155b80eff97fe864bdb0"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "b3996730695f06f49a310f38ffa63e6416a434ad6cceb2eaef45b83d3e4a717e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "caee8f1c8c927c974fe6cae9d7d3b4ab824ecf7a418f8b6d38ba7b21f6db6aec"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "722a12b9a66a1c99fe6197e5923ba1f34b1de5554e4797d4a5d25866b9254cb3"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
