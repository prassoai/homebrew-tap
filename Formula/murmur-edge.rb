class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "159.0+87f8a080"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "96acdeed24f318ff1e1963bb1d60519e74ce2d95a2e8680f0dd2dcb60c70fd98"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "3a720f6b5d11d3581e147dc9f6578403042483ac7dd471df78dd105a46665cd2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "dc11c7f9f3889bf28100a4432a17b9ea4bc89ea461e22da4d356a40ee1794c04"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "cf47cd5be8c3a4040e8b9d98270f8c1dcc362919b54cf45d2f03e4eb8890b3b5"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
