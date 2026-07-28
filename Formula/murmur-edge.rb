class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "186.0+5963bebe"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "1ed7f7c6aea6f8cdc978a91bc4e007e75ce62aae5fd0689f20bc527a3a7a5c4f"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "88f482e6046e890299e1421b04ca292c77ea4f2e2a691a7734688304ddc341a8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "b8c31366cc0da4d7dd5a6316d3e7048f4e26da0c4f033fd59fce86d5ff4de6c1"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "2a27f5f3d3f02a6d3ee0f633c631ce7aa917f5d7cb087041686abcbe897606b6"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
