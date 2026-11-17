class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "310.1+de1273c0"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "7f4d738e15c2d1967ecdc99ab5f9f776f5b10f08ebb507e54fb55f7182ac1fa7"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "e67d63f052b97e94564d5f8ecde41ee2c63cd7d5daba79549097525ad4edf554"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "0a6bca151c74a040322d30747d9e4003c6b0d17e234507f8f53a4455b447c04b"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "3fd425c65d97c17644e3ec87cfd5fc2cd9d26b53a9f52c6588664e8a5a8e162f"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
