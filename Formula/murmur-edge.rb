class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "209.2+c3bdd287"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "240f17a5a5b24917bd2f999fdfc6fcb200b3c129f3b1dc2e7fa40e1a944ff5cb"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "42520f96a5806f38f3dfea46c2bc36b9b203965af188fd76025ff830cb89773d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "2a8838c3bb4c228b4e69cb4fdf8c93111917ba6b4ed6f9ce3f4d6dc4284b2fa7"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "6dd8329d12f498d111179b9ba1fe875c6a1fa176f1af264291b0355c4aa9b5de"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
