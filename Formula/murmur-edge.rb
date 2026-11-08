class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "293.1+1fc8c182"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "6c1b78b3ad8a04f23b53ef4aa02f6d9507ef40782e1b55ac9938f297ea1f7c5f"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "e384df0ace21434ff76d452c32c588fbdc8b61a5c01fdf01e212fdf79f3dbc2b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "ff83fcb50c4974d6e6620f85f9b4390e0676c01ab7727576cf24e15df6e32ad1"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "d61a4a215df2f0475bc7c4951c2df49ee9e5c6621059361eb48739ae4187159e"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
