class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "205.0+578e569c"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "302b05483cba6ca483d8c10721cb2f1a214b3b031c4d78620b7eddbbb42af2e7"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "0cfe0e0b9ab29d5a1ff8bb52cf66750288d7302d2a87e837e581c8b3d2c20b71"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "512cea9aa3d6d96b82096d2c41671eac99c8873dae8f3f01ee3ca8cea3ba819d"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "db3f9856127dddba7a75452322bd0e2b8ee815ccc429bdbbe249b869c9ee7e51"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
