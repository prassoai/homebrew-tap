class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "221.4+38f05126"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "16055c9369b23e81ef4aab1fb5f6e2069ddd6d99dd92f5ac360160fc3471dc54"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "30cfd3c9c1bfd4584f31303cb20f4db3d71b83c67d021bb8e5d149e0d3fe4e13"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "d9b1a88f68a8e5d287c30110aa5d1a07267e236bbf8a929fa9fee0ebd826fe7a"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "1b5775c0628c333558bff433d320ab1a5dce826ba48aeda1119dbd0dc22e4671"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
