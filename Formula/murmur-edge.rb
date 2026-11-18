class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "314.0+51afc817"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "53f6f91fec40e57ce87fd3e3884f0ae1bfa2c22676a8c762e0f6a5880e7f7874"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "74a20f11f4d605b3bffa1ce2933b5fafbd5607bd541aa75c7640610acfae7f00"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "854195d7bda424feb30e9b6aa825a0ba5744b7d92d1acfe1d247ddd504da3bb4"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "35714aa02b3ebe1d930cf62a0fde741bc678a17ee2214d6227e56ab06db128a3"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
