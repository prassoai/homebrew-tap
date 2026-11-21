class Murmur < Formula
  desc "CLI for the Murmur agent orchestration platform"
  homepage "https://github.com/prassoai/murmuration"
  version "319.2"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v319.2/murmur-darwin-amd64"
      sha256 "0d4911b6c0e2e9c6ae5d054f4adc721ca48d9ce6a1d21cbd56c179280cbeb1eb"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v319.2/murmur-darwin-arm64"
      sha256 "18975cd9fde7ed2efb331621b662d1affe20f85fc5183b1dd0d4d72781739586"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v319.2/murmur-linux-amd64"
      sha256 "e6064a5734c01f735a3facdfc20ee6c37eae534cc9942684a249c52f58d170e0"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v319.2/murmur-linux-arm64"
      sha256 "2e4af1afb838c970441737ef63ea5a427b4879177e7d5b37e58b85ea4a217b9d"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur version")
  end
end
