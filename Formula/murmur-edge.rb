class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "158.1+6a000d9e"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "7daaff2201e8d22d758417a347875b3a708d93674bd9d047da343605e2cab057"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "2c1670dbb81bb7f10eb225dd70155a493fe66d747ba63e539d830306d5f0a16e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "28d3305f7f180168e237dd3c63a80f350e86c098581b99daaab1c90a7b8ccecb"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "b802b992ae6d12eb25180465d4ca3ae9b02f0ba63bc2827d77603b016af77798"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
