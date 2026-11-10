class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "293.5+6054fc21"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "a9fba7b691cf98c9a4eaa444294723a64eac8e02367b7cd30ed816d98313a369"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "6ef9ef7f26bba2aa32ad3a0c4d25646cba8513f24dedee7090f31b77f6de3a93"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "04cfe1c1468e805ed7ac590f0d1064d2ed9cd9689c7d4a5e90532f1c60af6c77"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "74d9c1cd0e2bc741cea96fb83c5bb6cf1b491c2c36d77f90f8daa7ad55b745af"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
