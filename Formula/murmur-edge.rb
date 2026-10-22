class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "268.4+a07c3cae"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "6ef7c4b4caf5351a2be3069074fd609cf2271ce6d7dc5b15627f8a6651c0ff2c"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "f0f710294470c9f92134e7a495fdaf0dec77e5cefd8ddbd6027d6ebd9b0ad1b7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "7f6602a93bf7556f763dc58fa56282628b63d1a5ef23712d45dceb5c816f67a6"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "823c13e30c5e404b7e1a1de06da8b4d49a9cb05041c66838657da9e39899ec40"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
