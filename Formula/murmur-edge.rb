class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "330.6+39478021"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "7ae0d6b700b02d5fc905dac7d415ead2f85695f9301c50c8a35d7e9c357cf405"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "875b7431de9402aa343c5cd061d0422e54a9b2fc03ddf6e855b9d3fa79d7b871"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "aac31ef0d4f763ea34f2a46582b7049e55362ba6adf825f93ad11775f2d180ba"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "2d9c82f3a2dbb59fa8f8708fae850ee7862d0f64147ecd40c1f53ff34086c142"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
