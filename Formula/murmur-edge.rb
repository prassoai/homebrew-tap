class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "319.2+f9ab84d2"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "0d4911b6c0e2e9c6ae5d054f4adc721ca48d9ce6a1d21cbd56c179280cbeb1eb"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "f9e1d93df0446870e002129d7b5fab69e62cf18ed75a52adc2a5e957c9089659"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "c2df66eb6d832b53bf2d8384119fea02d0ddbc37a7fb0f8f68ac103e75bff724"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "cfbd2ca58b57f97ec3800aa15a91a8c46cb1ec47989ee8f8e519fadb49cb69d7"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
