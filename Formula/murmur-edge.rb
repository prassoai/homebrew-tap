class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "294.0+20d4cbb5"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "037ed23c0bac74b6911d3eba172b410376888891b1e8cc366cc79a4eccb4c8ad"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "5e1754e9389e0011bb0bbf67c9acb76d2126d9a53c5d92c9e6d700f8022f0ad9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "63b199b21080a51b6104e01e282ee522355df2b201d343e4bbd4ef243e7f0298"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "734daf56842adda9c16ff512a04cf1bf8f490fc422ad2a1fa07ee95cbbc2dcf0"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
