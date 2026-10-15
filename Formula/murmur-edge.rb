class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "262.0+93c1012a"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "51d1cc35d3b2510ffab2e90e570e820e1dfccf0491d4892c75891adc3aa07837"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "f39249a90744e42a91f70d5a50aaf7fc306775933fa97a3f3eebb895fcb1e060"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "c2f2d8da9bdf30472a35861b21696dd54bc8e8c221c21d5a81f2cb47962cb5fc"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "4e0229b4634151be1e8b6cdf70358f2d684eb03540234a721525d5e4ad9f31a8"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
