class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "269.0+db2c982a"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "87aa8c714ac75313fa7cd7f5a113f4f1fd3ef14797608cbee4b8aabf9f976d21"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "c2a54f1f5e8c897b5f835a00b097df64f22c4f2bdbede31cc320a9ec543843af"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "5e5b0b1e3a00788a6c3fcc370b88a8fa62f1130ca4a02e6ead7531cdb5e79c1c"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "23349aa58b5a8a704cc9a240eca59be1228a70ce21287ba9816fa6c6d490b03f"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
