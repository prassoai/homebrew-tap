class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "229.3+890b8f59"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "2aa42afdd2e5b1e1e0f04c5198361f812f23fb1025900af8316520ff576912dd"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "ce2b653f5801f0e9a05e4578340d7a2ccfcf36c68c824afa112fceb30b450c0d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "66d88d9b5307c053fbc6fbfa203afdf2d5127ec81b62d1235579b1482dc2d586"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "7b003bd86ee14d1ec4e0eeb94b16ef3c4dc9108550bde1a9bc22e89f6aae225a"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
