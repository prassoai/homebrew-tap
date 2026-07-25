class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "185.1+8a2f5f58"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "aab89f423ef4317b9b00f4bdeab7d1eab8758e4111cc265b6fc1874acf499d82"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "cb2a0808d67941cc7d1196d5cd9c507ca81bf9a5c739ba6656321c5726e6bbc6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "7c8ecf358a1d50a42f0527a88e5da85d02e90659c3f3245e1ddfa1ecd4f59d49"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "26be64ec89e85dd085dfa0aea75fd08146b4337ec65ffc0905186bcc11781b71"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
