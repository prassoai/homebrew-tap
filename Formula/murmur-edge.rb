class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "177.1+b98e2c7a"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "ef1bf50aa6822eeac45dcccc95b515499d1fe76c25ccae8fd17c25b0ac058c77"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "bc26f7c421f975a9b0b568981dd4190dd3ab30aec451c8aa4502ec34de9e5f76"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "6c5557fffc8a073d2f3b61a305d921d966b38f11f186cc15be187f8e3c32ed94"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "b0bff382830469b8ec15ce5cba296b6afe55c1217a7bb2fc9e13ce0eb1235887"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
