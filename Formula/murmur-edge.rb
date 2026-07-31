class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "190.4+ef1eda10"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "5b0cb3a0a40794a26bed01b8476fdef031596d9edc2d25d91ed04fec6b00ce83"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "e500f1f2800d3c94d08c1e0acd7e0f896d4ba08ecbfafd57c5cb08785d3928c1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "2a6e129e9d16cfe050b2aaa20487996a164d9a2a3099a2b8f0c80522e35ab9b5"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "bf53b3629c63e9c7aa0a1f526a5acb83962f74d7cd3b7a29cd8a6c97e772f856"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
