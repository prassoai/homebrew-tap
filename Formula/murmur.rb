class Murmur < Formula
  desc "CLI for the Murmur agent orchestration platform"
  homepage "https://github.com/prassoai/murmuration"
  version "229.5"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v229.5/murmur-darwin-amd64"
      sha256 "563df4cdfbf919cb1f8518283cad7da594927cc0becd79d2408b61ea9d3ada96"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v229.5/murmur-darwin-arm64"
      sha256 "5661e2a2f862d6831f9bba463e7318636b435fd4317f2fa6dcde6346027c884d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v229.5/murmur-linux-amd64"
      sha256 "f0411c01f3fa60bfc4511df924832acb24ee92ad5e7c8e141f399941976bd60b"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v229.5/murmur-linux-arm64"
      sha256 "8d7f6bebf0335833093d19545fb68c5eb3dc750f5c269befe4b6a91bd8b3c3f9"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur version")
  end
end
