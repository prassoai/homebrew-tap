class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "222.0+d2feb158"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "58206a3ad0ee5febb828b37d3f700aac0f1b9936b3b229e3ebf2e06fbf119d00"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "d461002867ceba9d5dc7b0d0453141ce836ff970ea935b6f36a300fc2a12d37f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "83cea34e9a6f57e21512b44990460606cbe609a72a0de104a4c9578ea4d89146"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "df9b52ec1ddd562ed19a1fafee5ed85bca3dd20cd1cf90110d4e1a1ea42bfefc"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
