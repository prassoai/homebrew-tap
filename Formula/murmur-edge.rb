class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "271.4+542984e1"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "ece1a1d87d2ba5791f69bc34b91c12376fcb085a61c00c03542c208b7e7503ae"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "e0d5f0ecdc7fe5de4558faf7b0ef34684c7e56bc7e7f8c68a21d52c28efe0bef"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "d8de4f1f3e8ae19d92dc4a1aa11af7abe933bf956ccc2e5e5be99bfb97a676fd"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "48b2f24bbf417ac7dc4ba45f3a7cf91778368c40644d9d5b1877e2b2d8b46384"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
