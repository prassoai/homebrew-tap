class Murmur < Formula
  desc "CLI for the Murmur agent orchestration platform"
  homepage "https://github.com/prassoai/murmuration"
  version "158.1"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v158.1/murmur-darwin-amd64"
      sha256 "99d193e0f169120b6e04263455f42bbb7dcec7e22107a762b766e518636160a6"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v158.1/murmur-darwin-arm64"
      sha256 "14cf17b5ed1275036604a1cc378b97a0f874fef25404f37b3e5a00473ec44362"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v158.1/murmur-linux-amd64"
      sha256 "ba61401205354b08b21c7722e782805fefbd83f4ea47490cc42b67b0df74480e"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v158.1/murmur-linux-arm64"
      sha256 "69d788a083d3d5e1309d12f6b8d401ef671f1b06ba60ed5f7d6ada3e2e303fef"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur version")
  end
end
