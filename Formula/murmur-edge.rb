class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "214.2+65fbf868"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "854aa89f9e0a650b89c4416d0cdf109d2becbfc39b42cc0f566d1c77ce4a4732"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "0f4cc8f7e5b99d12a5097e2bfad8ff136c5317f11d14f42dd42dfa78cd5be71e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "689ff0ce28da0b6f9294ff4ce98c281cd353373507f058f79b76dbb4830f6905"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "e7705dd36cc208aa5553477c0a1ca2b304e2a9665dcbf4b3432aad0bfedad469"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
