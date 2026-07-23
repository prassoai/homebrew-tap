class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "180.0+56ddffbc"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "c31edc34a94e53af6ffcab66019f75fcccf39ca93db91ce85a65056ff286ee24"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "d3a9f8a889fd7849bfaddc9a8e7f1bea39ac641fc98130c2efd9a400dcc19454"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "e1c3002d2827fee5d5039b94315c0338839b6f6cd7107e6f5dde9898463067d0"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "0ef05f1d70da77863a05e63f96186406c13a3425f8b12fc4e6abaa0994fbfc2a"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
