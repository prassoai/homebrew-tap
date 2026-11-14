class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "303.2+debc9959"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "5bb9bc8e16c6234ad4fbc2ccf07e09bfd2b17dd9ebf0bf7c6f17df920c2d6902"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "313546e96ec2e8a30548027dbde4a7d72d57b6c9d8723233e2b8f5c08d8c68ec"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "3a33115bcbb8afd9a39fdb6d72f4adbb76e0bdcc3f6d1e387c35a7bdd5c73df6"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "175090b5fe0b8719e1d55e7765d80cd12078866928b3f6576e5197f1d4755fd5"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
