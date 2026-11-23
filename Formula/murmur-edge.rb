class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "323.0+82a4a270"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "21965124e500e8ae855e4864028b9f8598c50f9627f5c5539216caaed7457b89"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "d5b8ac2abbd6ee0d8f61be189bc3ecf6c60d09865d27c24c53addf44867e2a89"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "2756f7696dddae7ec42cdf86d5040e513c5ea576de91426bfa3eb8c2d5d07fee"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "ea08ebed1929da67b245c7b16283ad696a4a0b9d8ecc49f82f8d6ea4d24a7370"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
