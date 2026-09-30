class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "240.4+7bd7a2da"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "cf7a4c618d29d7b4e6641b4a5b7c116f84ceccaa1bdbd5cee28357d43e81dcc6"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "c635273fca227cdef95ddf4e85d2a8ea82a83b19a065be13356e7d8d4ddd7706"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "c0f57451cfdd1938ff54bc7e364f8656dad4824760689daa8d6b51711265aa7b"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "a1e753e9ca275b40697ea88c72a1f7bcff7f564d69802ef22ce3f0006bdecbe7"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
