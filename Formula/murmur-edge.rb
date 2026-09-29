class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "239.3+4a501b1f"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "f5756a0ebe2b29b54d90a5c7ebbe5b2fe0698e081e09a58fafb2037a988c0417"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "c5fb02022460f4bf1450c156ede4f574fc6bce23d64b05b3a295b90eb901213d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "dfc4d0f079de85325fa3a492b7f3f17f297519b59e60f52fcf5006b41c8ec4c7"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "921e6a94bf1f1bc82533e18a7a24010f10cb2abc4adabe0273ff9c3ee2b81cbd"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
