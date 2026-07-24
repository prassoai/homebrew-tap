class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "184.0+9a1488c6"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "03a9f5bcfff1c8d37e39519feeffbd867e2f02ad034de89852b5f0436cf64270"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "e7aa5009c2b19d732e5e29fbc47dbb5b3c8cb1d62aea656c1fe1d4c4f8a22ab3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "00d29ed060deeb5655df3ee402bb749735f0e8383328e3845e8b4c57a9e1ce04"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "2e3ae7f4d49b346ef735b7573afcf29175401356e5112ef0a7e41fc048578199"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
