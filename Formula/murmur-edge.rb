class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "151.0+cb5fe775"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "4da999310b389b1afeca0c02f8c2bc6b9f2908ccb972ebfb5c56729809b9abe8"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "ea0a91b80df5bfc05381d8ee8122fa0871ee84327373aeb381d75b3b36c645a7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "2b9f87ef88d5a7d87b169e5a7e7bcf9e6390386758fbda1c87e8067fbcb5a638"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "cfe75c57031abe74d7adbfc1c2832eeb5782acd00d54e8aad7c9bdce021c0cd8"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
