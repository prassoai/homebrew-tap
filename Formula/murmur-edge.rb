class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "224.0+ef816d2f"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "6a102f2ecbbfb33b2183f1d0b453dc8970f3b47058e9c78ca95c52e69b1a1460"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "c80959a5821b7ba8cdca9b30640ce51f393392a621f83b595d12504e9d0b0c2d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "9f7f380dd244e10e60b60c8439fb351dc5934a7987e626d33b12ae3c2cc3b0ed"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "02eb3710aa2a75ac4ccb817fcefc331a613c23938690e36ec00ac803fc7f19ca"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
