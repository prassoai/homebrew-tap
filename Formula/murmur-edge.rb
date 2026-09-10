class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "228.6+8ecf47d1"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "9fab9c1935efe73c9ac017ddbf3a30dbbf8d3b9efb32f0e2ed228415f9e5bbb2"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "f957c08a9c4a6cf164df275db237675376a54d8a07ac8859370a18da8d6be7de"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "78d6c6c7a8c9e06b7cbdfa0a272f2e01fbe3dd46d1d337fde8ed748b7e4729dc"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "201b6e511d66d8383e6ca77ee3861aef0b45d14fdd6572f17aa26f0e9fc69d28"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
