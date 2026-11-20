class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "318.4+fd25b8b4"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "ced2d1e266ae7ef7787c928984f68b350cb8abf33c6a4786a2e1137de6099cbf"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "f1d1d777ca3fe529c3b23bffbce08d8aa951b9c1ffe1804d47c41d6538ccf6a2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "37a63ee3eeb88fdce9b58ef78e13fb893ff4e72f97903456cee824516d23c073"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "40e8db6b4d99eabc33c7b29e35f27a8be6d87c196e0cd6874eac2b4cb52283b7"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
