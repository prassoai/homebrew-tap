class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "304.1+16eb0633"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "da207ee0d0f34b3383cec6910eb2f70d5e8a50acc5d9fb4abf5dac40bce57370"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "2bcb8c273daa8e06c5556ef0a22ec33f823c75f10d1bfc28f0e6d837d71c3f5f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "d60ec098d44fd7c8394cc7e616f6213a47fad5ae2ad5fc7fad7a8a4264d80600"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "4662fb1f17cb48c586d9c48e2de8f9790efcc1d3acd3250962450b98265e4ee1"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
