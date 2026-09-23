class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "232.12+7b33eabc"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "b048c58c81fcbab4c84f5a2d1a3cd3dd686cf71b604a2facfcc9f5b162b2b126"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "1b40fa5871c8c4db7ee6b43248af8a5ba01f823ef966f8a8f4f2dcadf99994ea"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "c60b012443ba082b8ded44ced3b4f99d0a9d84138be55de3525284f80b8aa011"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "d6e879085532ad20e13d705cd9ebb8a1eaefe3c8b0cd2ead4e276a11d13f4f22"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
