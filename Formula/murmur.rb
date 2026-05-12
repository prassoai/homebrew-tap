class Murmur < Formula
  desc "CLI for the Murmur agent orchestration platform"
  homepage "https://github.com/prassoai/murmuration"
  version "76.0"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v76.0/murmur-darwin-amd64"
      sha256 "3223e39c3be21d9cc12dab5f9216752d0a5460e72c2573d01a43292612c369af"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v76.0/murmur-darwin-arm64"
      sha256 "7b5628a7e893e563f397be995f0375c83c73c4e6299c6778f9cc1eb9bc13f05d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v76.0/murmur-linux-amd64"
      sha256 "c81124b415ce6d1955efd09b2b87b1e4077aebf47b1b21d4e472299173e6012b"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur version")
  end
end
