class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "177.0+4b6830e5"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "b1e0de5b26eb93335b138de03dc5a0a08ade0ae9c3f4f28d57dc452e0e84e189"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "ccd73ab419a60e72ff2c39bfd762b9eca529153b181b7cef1ba1a15d770eb0ed"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "3a4e07d6eccdf0f7cf02bdabcff00a3e98fcd9ef2372266562fb40d6eafbcde6"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "6e0661b28b1e0697ab6a5b3a3bfa26e9906490566ded27fb2bb987aa0a0b88f0"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
