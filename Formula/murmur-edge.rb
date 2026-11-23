class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "322.2+7cba6136"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "268ececce0bf86b5e2c9aa07250c1afa6b55018bf7c2d2894cc134c046f3dc20"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "4a877f3861ca9cf45416d243a5727acbc5b131fdc07fc7e1a7e4e32f091e3745"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "45e5390f9e3be0594a0eb6fc2b268b325ff389614f931cfdc3163ae07e788c8a"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "f5c3f1b138fe78817812a4353e7ddb5f3a6430fcb29f6f7093d19a3c6390ab1c"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
