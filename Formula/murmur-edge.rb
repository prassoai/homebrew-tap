class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "215.2+9a9d1f4a"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "049af07e6d9a0794a1eb110238a7fe3d0db92159f1f87cd4b6ab86b556300744"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "9edc60ed4289406ff886f651c22fc8c1e5b189d7ea9a1681e35c25cada3e1b0d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "d834f9b9de9478c9325d7a98bf519dc79fd51c1fe146d72af9e7ca933b3ed8ec"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "ec39ce959cd660ce19dea4a62e6b93fb2dd97a1d15ed72502ff0dcc62f86e709"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
