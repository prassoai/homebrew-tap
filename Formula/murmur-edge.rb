class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "286.1+69d4c642"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "3a1b426a7a0007ae68ee51e74aae58efda83cdbedde4b123693d26549ddb4364"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "5aae8d9474bb9fa50831efe823ca4c6e5810abf2e176f4f990a442dc63f88547"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "54563268f41aa221466fba6b085ec02d135ad1aba8d5b6c3a1a74dd3e1dde550"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "72b5ca3177f1a02843c4e2cf638d7d48c57562fbe0f5c2a8b677cc971362d787"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
