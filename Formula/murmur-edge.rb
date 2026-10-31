class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "282.0+27f1213d"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "60732b466aad9d06719e7488cb99fb1d5142e9c7a579abe38ddc3feefd5665ae"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "55b3a9b230d458ebd041bcc9e368a89d71e7fd8cf9ffae7fcbb137c95a42637c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "02bd06bfc0c3ff145d5ea87d214c3c91bbddbcb3a59e78804dbac3d35bef6400"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "a67a7a74adc5215b7151e38e9435ed8cdc49c5b407f5f3d2da2081d85617dc4b"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
