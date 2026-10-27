class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "271.8+551ddec2"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "0e7fefe9014d2a4bcb06c14ed4ce3e4c81281c4a2ec6f2941e06046ac56c9ed0"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "829cd2bedec5048cc5db57c587d073d7aeb05c8af4eb7a739fedfc88724afe02"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "130e6b47c24f21f2180da0cfd61788845ea99c45c9fe0ec325b1c51e58f02226"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "c7cfa5a0fb41901a725cc45c0a1f6131dd508b825ef6d1bf032df77ded2fdf95"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
