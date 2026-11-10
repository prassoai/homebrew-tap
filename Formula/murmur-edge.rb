class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "293.5+da77af16"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "8ddb1c74d7fba614d2fd7e99cc2342bb14c173fe7739afad03c9d306fb5bd5c3"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "31f818e1e4861c7d43202a1f52c5b4a795ecae44b7e4e43075b194802e66eaa1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "c498274b62ddf14a4ee30027a0a373b32e66eb22f5ebff9aff67a9fbdf986cb5"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "7e7ff9ee77b384fa7035775ff90179c86f454cc2f9d958c33a4f76d69d5bcbf8"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
