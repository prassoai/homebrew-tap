class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "268.2+9fc9f204"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "4045ec0cf7f2e9107d36c7532d2beaa43b1641dd3bb63ed40cddfebcf5b28668"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "d63296eb405dcc4cf0abf826b4c18d1b800b6eafa55e699d0582ec97fbcc4539"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "777229d634f11f2b1b6cc31787d2c9e4a7e719d816a3c456f0db19b5f72f02da"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "64fe9935221ec22723217c3d59dc6f5435c64351c75e9d913eaf26f2c43f9b1a"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
