class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "261.3+c4b5fb3c"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "82abcdc91908f5f290c20d1c217559a09e44cbc64b2da58325f5d4b59c69bdd3"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "2eb5ac7d4e39edbb7f197e30948cb6926abecf34d511b1275ce02fe2f11d7afa"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "bb71dc5d6c5dca4cef5eb5f74824c6501ad8bcb783efc0ce7276e69c0de67816"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "89028b6ba525cc925e26b436a8cfe4da421d420fb6c3b8ede0c93e2a7612a597"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
