class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "324.0+a0637a9c"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "17576f2dc3b23073fa6ee0ccec90aff0cd84d9bbaa0a0ba928561fb4236ebe90"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "78f8688695dd0d9e363a5c2e572e76f6ec31016db28e2cb2a13c65c3460320c3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "1fde6be2178ea85033a4f69c09c15a42c75ec0a1cfa7c263dfa4c6f8d57eb665"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "340a1368411da1e88224558515e8d4d01f9db9145dd7fcb301f7be037f1e5710"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
