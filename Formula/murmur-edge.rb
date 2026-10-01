class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "241.5+e2c7b648"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "34b7d2f3858ff0152e28917d97ea0e4ef1fd9e9635ac2f4c7ca28b5597be4484"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "daa18490888425d4e2b2cdb0af8d2a712e4a5e470a3094315f2c2b6cf9e34c49"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "f40780db51a6f69967af4fc8ea33c645c1455caf5e9ff5f6287e15dbf6771121"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "0bb237c1ec49564df382d9e5a7f56ab6dfda4f4b5746f637c3eed74946c6a33f"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
