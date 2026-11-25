class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "325.1+1a1cb24b"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "64d9ebe6a288c34d1f74fcef9b5b3eefeafeb302b5850065b8fd304a8e6b438c"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "db77ee940e65cc9562c45e32bcb3cc5a4d1f61f4bbed79ca0865c9b7224c6ab9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "ec6eabbbe574d8b9a7aef8b5c2c80a4efb39552cb56b5411ad4f49469e396bdb"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "897cf5bc47fe4f4d963dd1dbc6cb5a9e44b941cc4dd69e7e519e76c03f1970a3"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
