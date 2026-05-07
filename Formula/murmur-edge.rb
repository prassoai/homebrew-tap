class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "67.0+82022fd2"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-darwin-amd64"
      sha256 "2817a005bcf47c3c01b4c774e03d3a2c346f3d087d4bd9429ca994cbf6f8a305"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-darwin-arm64"
      sha256 "2c0651edc5bbb1bcbc0809823c5b7ceac36fe6d77b095068a3e4d1695f4c61f2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-linux-amd64"
      sha256 "d519213430260d9bd49d52e66d49a55018f8e3acc99d50f5a2e68b03136c92b5"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur version")
  end
end
