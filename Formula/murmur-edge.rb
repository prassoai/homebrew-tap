class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "304.0+bbd11c2c"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "236d5f90a604c6155eb96e77bb88575fc73a4b16689547167e5d8281dd5a17e1"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "dfa2b455904dd9782a8666dbe5fe58aeace0646523673e87a2cd2032d39f8cb8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "840ff2ee91436fe8faa842c6d7b841f7f42bbaa7d8e9fcbaa92702f2b3ed4003"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "ddcb014d3a3a39e0a5aea25a6e2c5f13029acf1134e18ee66a180d710968765b"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
