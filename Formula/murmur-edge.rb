class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "278.3+e3fb2ca1"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "1c80ec4c29d0feeea6d4f225d64207aa01279e2a546f63ceb0ba87f3af62c4d8"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "98a194c21f8cb34edcaa4208d167bd7169e8c0ebd8c2864f42e4bc323f506b28"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "a5b1df292bc2d1c438c880d62b42785415368156fd3314b45e4deaa3f3d8fec8"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "847d1fe97a50ca201a5919693ab3aa44e4e2b4f0d12608b57c108b86ce5230c8"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
