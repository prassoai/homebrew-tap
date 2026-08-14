class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "212.0+d300675c"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "3d7bdea803fc66a401b379947f7b56a56e69aaa4e8e234f8c8adca12d64b1260"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "82dca14f411b64d3a7bf334ba485b8ce141a68da0302b377d86ee645e4d0376f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "ce08a9dfddc217a36cad388a287f1ca9cc93ec4ff5877d14ed76f937606e1395"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "27b1b9fd2d0dadcc33e45178a5b3b66d74c2d4a62ddff914d8c996ce9262fd96"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
