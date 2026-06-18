class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "154.1+a40166a0"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "8ce6429e595220d8c0ee20d1d3f3f60c56a699ccc670ba860963b6a7b013f565"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "e7e7c183c1a44a78d810860edc08cbc98aaf2af138c1963f51f653944bdb0910"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "1854f28d36bb5840813ab5cb8e4f182a2bcf5374e1262c5ba00775c8e5bdd451"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "583eaa0ac741ba414558582c722b6b3e8dbfb0cedb9ea6c6c8ec03e75a1f2337"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
