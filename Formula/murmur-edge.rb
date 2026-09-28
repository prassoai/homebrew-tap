class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "239.1+1faf0c8f"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "72f9a46f8f05c3ab546e43ff93f09c45ccbb4f96df5c30ed8b7084c84c2f4635"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "ded491c3f398827a69b7fe72a0e8fb14be9bf40056fc1dbaceeaa3765d4627d4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "d83ca3aabeb67bc40b39f3f1a25f5f3ed2e4670977ddee6bf7d6e55cb2953466"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "2f77d5b0606094fb82d5f297d155bf34c14bcd2abd0f840d8bbee563c3cc473e"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
