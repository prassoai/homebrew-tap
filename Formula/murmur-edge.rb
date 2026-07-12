class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "169.0+2a57da55"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "d307bc77c9743db07da0d9f086226c38e4974db304ed2dd06891ecf682b5771b"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "06e3c4ba98ec932788fd686ea3e38d7b8076abde3ddc8a5a0d64b653f36ae0b6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "626ebec02d54fc393fda0fb6f15629b73ccbcdfcc66d2eb6e41b9f9c59f9e3dc"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "68cd8662c9c3eaebfb3ad3a774ebfcd4d8a55b9ef4f8f5f914cfc920cdc850db"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
