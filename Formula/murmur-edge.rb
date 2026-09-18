class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "230.0+69fc4aeb"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "92bb963634a042aa9bdb0bca58b64d1dd1b5f1a6584e2e9d45d31dcb0c717cda"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "183cda5c1d7000c51ce7029876507b64d594c63c65dff891183c65b0e5f72113"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "609c812e8bf96b28eeb6809e909b505ebf0ec1639ee493d730dc9d37fe85bc44"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "067f4eb3ad1b5e719256c977c63c4d63ac97ae0b413b314fc6fc16fabaf150a2"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
