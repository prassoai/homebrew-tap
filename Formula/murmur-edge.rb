class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "173.0+fa3b95ce"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "35556564a5b47e5de4eaae59f8d76f4c8ce1a70e3f27e36a32473f9b1ee90366"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "1c3b0e17c989e20c3120b6568f196a1471501b70d94191dd95931e429dc92192"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "712c118af10cceb0194fad6c44fe1d0cf15d747a5566f5c12cbd103066ab9fdb"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "c1e054295979cf5f40bec91fb73b3d0fc070c8edcba8f8055b1b32319ea6a091"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
