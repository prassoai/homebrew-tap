class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "156.0+79bfd085"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "ba584e2c7f59602dca72a18e9a9234ca45bbc6725bb2d2cdc8a7534951c75753"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "65380f5cee69bc6864ea480b34eb7dfff0ea8ca84c414ac6448b647afa8d2944"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "e2cf672ecd807bd03cc61b91b7a801a8c2a8d64b7d4af5bdca1fd921be9063c0"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "59afa6002d3d807597d4d3a1b2f180f2dc9735a7ab07a9a3caba13cf59a98b5d"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
