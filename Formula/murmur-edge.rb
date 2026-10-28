class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "272.1+54405db6"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "073f429e454fd835a03a5fb33b99c54db042a544ee3f9283c2c44d9b6a6115fc"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "29f19e8edc7a6903f92b6e14f0c6f138b67b7efe7e299740f6bf2c7db31c5430"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "cb0c85335e50ce616c92870b8ed9e5b25a7961b64101cc4e3d2b5cf7a1106b0b"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "59cd94754413de7273037c655e89c0aa5a5cf59cc11bf81b7e758cd6821eca28"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
