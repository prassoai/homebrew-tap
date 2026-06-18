class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "154.1+e0c2511f"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "8e51cda925ca8f850beaa52d0627fcc87e39e0413b7f31c6274575222302ffe2"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "3b4cca977c39c23b28b5e18fe51674ccb8a5bebe405f2eb1ceaefaac5b6eddff"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "4a764b34097b853a3f459a14c99fec3d1267a0d10e2ce2726bc0e49cf9809533"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "076ddec96b809fbd8fffc2bfc9502d49a8d9d6ebc8f13cbea4ba942aee7c7fa8"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
