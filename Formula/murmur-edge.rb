class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "66.1+8d211e20"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v66.1+8d211e20/murmur-darwin-amd64"
      sha256 "87195703da559baf61770ddd6108b9e2ea8d6038d2d97e0fdc589535c2a85765"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v66.1+8d211e20/murmur-darwin-arm64"
      sha256 "91ee68c2d2746d43b0c8395e861856d21fd5624687945a03e3c3fc8d7aa569a8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v66.1+8d211e20/murmur-linux-amd64"
      sha256 "9ece07a3f35f61b7aa0e8571f486cf7697419b29aa6fc40b42c8dadde9bcf7e9"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur version")
  end
end
