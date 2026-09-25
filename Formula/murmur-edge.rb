class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "235.1+43c76067"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "d42e17699fe17dae711ed942bbcd4f2aff8e7d03558c04d16a5b439ea17dc503"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "14c9c8263df2aaa34023cfb0255462f7fc1d2a2c05ec7822f9a61d08f7fe6599"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "5a382a1acbaf0ff83ff9a3343b592bb8d1192c7116352b6ee01b4a7a9b444e3b"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "f91a02b3dfe33a3cfee3667446d0ba61ebcbc4db0bcd054d573b22efb1963640"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
