class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "271.3+787f2747"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "3497bc6a8536d3bf8a65c84b7982a4832531fdc22fc0fd3db5f290a58ef44eaf"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "cdabbe5ca5122feb5a6fb349c33b2b649dda46c197ab3ab6252e2fd501af2615"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "b19ebec21ef471ccd6cb7bcbcfda16457c05cd7e680f4e10b5e2c3c22d9e7509"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "ab3e8e11fddf1d37b027d3231265fb2ec0bdeee845dfa5bb133cd54770cfaf28"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
