class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "331.1+4a6e7799"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "c9145b9f0dde6440dfdbd8484d67737d84472388dbd9579f967d726e0a329979"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "df9bfbe1ce7b9b045e2bc62659c3ca0432151a84abe552d0f029649f7bd1ec48"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "9195b68ace5f6f302bc5e44f2dcf940b92d42cd378f17d7e8e0bef527275d112"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "2d9ed6fe0bc39bdc77e8452bddbe02b4b1b8aea6a136d2ec76262e786ad0cfd2"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
