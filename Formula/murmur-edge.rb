class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "0.1.2+b953ad75"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/murmuration/releases/download/v0.1.2+b953ad75/murmur-darwin-amd64"
      sha256 "aa47bbf5f29e59e5e47242db021c50656d95a6c1e50ea552309b15abd1590788"
    end
    on_arm do
      url "https://github.com/prassoai/murmuration/releases/download/v0.1.2+b953ad75/murmur-darwin-arm64"
      sha256 "46b9e0415d455a1cdfb411e68929e45405d76426804f4ba9914b93c660121d1d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/murmuration/releases/download/v0.1.2+b953ad75/murmur-linux-amd64"
      sha256 "de0a84cae8f28e82cd051a79b3e7eff3f14e062508cdc0ac5d6abd6266e80560"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur version")
  end
end
