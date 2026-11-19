class Murmur < Formula
  desc "CLI for the Murmur agent orchestration platform"
  homepage "https://github.com/prassoai/murmuration"
  version "314.0"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v314.0/murmur-darwin-amd64"
      sha256 "eba080bed15cf9c5ac1d6b7885a8d14aa6d85164736d04853243fb180f06da34"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v314.0/murmur-darwin-arm64"
      sha256 "54267bdfda0b60f41a8e93bb42a30f670bc5015b9a83b189cab1f1cf99cf0a81"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v314.0/murmur-linux-amd64"
      sha256 "f8a44a8641f996f3ceb299729b27de9ca6a4bb9f11d7fc7110b7da6bbf7b4d37"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v314.0/murmur-linux-arm64"
      sha256 "46f7c1a04a476892719343a8180502678aa9b8ccdc5adfd55aa5031efdcac732"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur version")
  end
end
