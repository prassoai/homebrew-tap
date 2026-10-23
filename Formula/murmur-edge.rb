class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "269.1+84da46d0"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "253562cdc3398371e36ae2eda194b7817bcc2c3634b7cd79fef60d5ec5b67470"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "86fac31b85e5fc5060b7718b023eed00d6e0ff69c65f3250d1ec7e83cee30a26"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "a1367dbf3df5d5fbfb0d077d5ea4023a1969d66c67b5a5c769c0fd8f14ef0c84"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "afc282593cccdd1bc42c6c5a86ca1a340c01be988424c40ce6b69e017356d33a"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
