class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "320.1+0a942b7b"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "90e3d10eebf0c3b6cb7a46e1e154b12edcdbb9a96984db656ef6a3c8a000f89f"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "a01e3526cc03e3d1e6ce4c7cf4e91a0af94f9b5a381263ffe371f4b9290a4476"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "a02f060453b8881983b236a9d4f4c393431c4fc5c8d1fcd2a82aae73552d2212"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "a3256922212faf1eaac7489bc06f84baa2ea378f2a831cc176ad61be0244ce43"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
