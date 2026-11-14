class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "305.0+94bf2d14"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "f120b9cfb839b465abfd950a3b9623d515be693bec3dd8997915b5ef5b7c4583"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "dc78ea076e0f52e0c40e7e0a8d13e1f36f8125be4a53669b400d803ead739f29"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "59e7343686a9a9dbf3790deb2af0f1375dd7c878a0a8fd5db1f8c6aaf40c6618"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "aa4878ae9b2b8d6352dbbd9498cd568f8feb9bc9510cb1e3a69d888ab66c5d6a"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
