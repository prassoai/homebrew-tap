class Murmur < Formula
  desc "CLI for the Murmur agent orchestration platform"
  homepage "https://github.com/prassoai/murmuration"
  version "324.1"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v324.1/murmur-darwin-amd64"
      sha256 "2bc7a733928da1229cbd50af5b15bae87fbbfb1b62d64745415fced4b0dfb007"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v324.1/murmur-darwin-arm64"
      sha256 "af0789c8069b2c402b065efe0e4c43a1f17ab20e5a351ba829c187e26be31d0c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v324.1/murmur-linux-amd64"
      sha256 "d4d32dd2ab5f88bece8115f390992036dd2bdb9869904c37fd66a0dbd6a9bd68"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v324.1/murmur-linux-arm64"
      sha256 "078f2f99443f574b19289777ba7aeaa6221e87a10f11b22993ef217706d61799"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur version")
  end
end
