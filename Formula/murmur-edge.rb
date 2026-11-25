class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "325.1+63027d2a"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "71d55902ecdfc77b785baafb4fd5985e8dd0ee1bb705faecf9d330c73fe3c143"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "f56897429d40ba9f4a38a4fdfda193dad9215d9a88ff0e96fec23667d766b08c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "d22eaa1446143b67b61c8dc5ebc7e2e2c8f2c69a0d6d0030e99c97c7f22a1584"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "058efd3c167cf8ca52ec5d5433105a6d9bb0ed24cdd63b8d5c5f554967ea6439"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
