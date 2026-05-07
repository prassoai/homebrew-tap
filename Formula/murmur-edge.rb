class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "66.1+6da6cbb6"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v66.1+6da6cbb6/murmur-darwin-amd64"
      sha256 "fba2006be9bf8afb5fc5d771470f259d36b3d9f31904595e2b877d503641e75e"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v66.1+6da6cbb6/murmur-darwin-arm64"
      sha256 "8d8cda8183b378de01c7aa80b0a52cfb10ee125e3b31d4b1912c36bdaad12959"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v66.1+6da6cbb6/murmur-linux-amd64"
      sha256 "4d044e2bb7a2900e6bf8931366f9752be70eef16392279e6d1e75ca230656a8a"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur version")
  end
end
