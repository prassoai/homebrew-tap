class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "165.0+33faff34"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "ad200f6e638d45782e78c2ad40daa0e81d9110aa3a65dcefc4bc16b8c721070e"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "870c07f53a492e798e862a3081da0aa77c2056d6899e8da077f68c868a7e7f26"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "f812772efa451c39e3c771dd67619ee14589e7bc529dd3fe99d4f916000b3b1a"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "d5386fa2b28ad6194a1da7c9a44c470afb2865c9d6dd7b7ba3f22da14e682ffe"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
