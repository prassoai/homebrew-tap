class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "239.1+3ec9bb9b"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "6e991b4db2d52b189309bcdd88438a95c376f8770a13f25b91161c5d8e5239de"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "61e371c48dd2890c70bf8724b66a69a314d05dd9e43783d675d85910d857e4be"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "37320d82bdbe2bd8d375d9fc9f8ef19df4e6da762e766ee5f0c170c53acd9cc5"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "db2484a50d6087027358ba14851ed08b18a8baff5c9a1c0c242c7bdd1ca4ad6a"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
