class Murmur < Formula
  desc "CLI for the Murmur agent orchestration platform"
  homepage "https://github.com/prassoai/murmuration"
  version "268.3"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v268.3/murmur-darwin-amd64"
      sha256 "55d904fcc1f59bea0c7153742132fd115fb3847a77a1d895a7540fcfe034df65"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v268.3/murmur-darwin-arm64"
      sha256 "c408459b456b52f671053be0714cdbe90d3f07988f146b5a1c08a13ae0fb9f75"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v268.3/murmur-linux-amd64"
      sha256 "0b007a4ed2714131a703df90db5d76a3543d095641e2e322dcd078e17c01c01d"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v268.3/murmur-linux-arm64"
      sha256 "2e999412dbca0425d6860fc46d37fcb0522eac4779263d75255d4f921294b635"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur version")
  end
end
