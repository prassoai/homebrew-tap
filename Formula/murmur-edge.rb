class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "196.0+75e9b7d2"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "5ea9bf55e8c81c03995773b8b8ebb1f6203513df662d6fc36536ad1b8dd8bf7c"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "7b5a27e59a5f7e8fe2a284286ece9323e8c8d7a572a50258352a81e88694cfc1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "f30047ba295da4f8b519556eba95d0582cff78f2dc8daf723e5f58ae535d099d"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "fb6ca3fc76ff8d123842f5c1c0c8d0de252c43eee3e8619042d34c5606a9b672"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
