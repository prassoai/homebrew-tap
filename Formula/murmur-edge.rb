class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "176.0+1297a547"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "5e3d53acba46308734916eb0c5d4c990af1f12443a7202cd6d2dbbb3c4b8dde8"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "c3e7fd5b40d97d79dcf8fa05c9b9fa69e0b44d9e4fd3fc962b53c0a951fe1b5e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "139b8d40efbde515188eb58d543b8c89fbcf1bdb01eccd109847ca6ecfb98dff"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "b7ffee09aa9ffb83037651c424c53c9bcbbf22662cd7c1d2e9da898728c3c45e"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
