class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "227.2+3dd4ff65"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "917d3a2224172df2b359633dc45c5ebb3a7469b0312962255685320c0fa12c6a"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "52b2cb4a4d36856769987a55bcb16fd47ec94a85cffee7e57c2ab6cc7f31e634"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "1689238ef85d9178d8f54e4d3d5d8342a0cdfea27e183f08dbfd3f0b587bb2fd"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "9ed56c02e0c04ba1a2dc1487504641b9d6a982f86d9ac4fe4fde2cf75b3b766b"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
