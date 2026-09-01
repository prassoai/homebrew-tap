class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "220.2+b9ff8b73"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "4e940af4c49d1a625849b1bd5a0cae9f1e4c2d087b8303f30f6addce3c137fed"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "4dd3bd7737ed1a8d3e0db2f2eedc91a62318c4c336d6c4900639526b2308bfce"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "f74be6903e4ee7b16ae4023299142cda75fbedb298e7e5d208ac04775a032d6a"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "318f295c7d5997944e1a4cbf14b42bf45d7d038c8afeaa8b98301876b9bda95f"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
