class Murmur < Formula
  desc "CLI for the Murmur agent orchestration platform"
  homepage "https://github.com/prassoai/murmuration"
  version "164.0"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v164.0/murmur-darwin-amd64"
      sha256 "1eb6be3b2ac9a1fbf84364accb33f36ef8b7bee9d39aaddbad7b7db929c73474"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v164.0/murmur-darwin-arm64"
      sha256 "c825f48c6b2c19ab00f65764fbcb0019175beec0b1a1cf18707bea8807f93419"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v164.0/murmur-linux-amd64"
      sha256 "7229c89343b7fb1777237682ec4c45f04c8424257b614133da01141f25484789"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v164.0/murmur-linux-arm64"
      sha256 "1a1bf145c282b1272fd168a655e50efaca244b2f26c3ad1914e99014506df55f"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur version")
  end
end
