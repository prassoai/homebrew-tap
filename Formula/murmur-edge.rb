class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "124.0+ff265f09"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "64e35a8a8a642a59e08ef042c4408bf9b215241e9e42f70362a0a3e85a1d971a"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "bc049e5ef98fc4927b5647c896d0e11e87fc6ba50bf18c50c023cfc0dc2975f4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "a0269bed8622f249e46c1038d0aab03d48b3fcaabf03a2af0c72c7dd86bb3cbf"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "628a8793daf9a48d62a70ff57fc5d024fe9bf57431eb3929e3f3cbb47bdb92bb"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
