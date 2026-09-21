class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "232.7+80d34c17"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "6c9055d40b270e376355d93c57d457fc22683fadb985f0a26fa135f95c2319db"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "f76f92cb99fe061b506a1f18e7cd97e679068a390f5e11eb4d3ce74d7bac3093"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "eb4041db97dcc4b23d9acfcac9ebb3adf2256640b4ed1e3dc070bb470dc914b0"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "1b9670a159de10f521db647245ba885a0429f5c30e0d1bc8c60f6bc5968b9c6c"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
