class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "106.0+646e5849"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "4c552649c41bd9216d7d60494e0761a7caec5f5d15aa43d94be7850c4dfaabeb"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "6ca1dbbce22e7be57d0c1cc2f3d4a4a52a0ff9adacb873b7f0b86e4a5bd7fc3a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "7a3a7c3a8ccb46ec621f31e69512c4abc6a63795b72243766d247d2c9f2c385e"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "e8a876dec94278d86f1ad09190b1a5d1240c136ab6d98ba2f2c24feb36e2a36c"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
