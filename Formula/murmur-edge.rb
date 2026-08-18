class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "215.1+ba82f6ab"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "634710160571e0f39ded387a62bbea91ee41d05a0a6c89c5a89a145a9fc01d9b"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "67fd6910aab4699f9c8d96bf8dd5f3f2b30e70beb6d451c4733ace846b61eb7a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "97d99384946d8dc36befb79abb0aad01c8d31bd77e8ea620be2b8fe9d0fc4226"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "9156aae822e4883fdce7a12de8f3cb99a932053f4626cbc035a2dd4619cfa2ac"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
