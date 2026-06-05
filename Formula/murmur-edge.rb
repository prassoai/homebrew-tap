class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "122.1+e6b5b5b7"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "2c9a701275dba8b8a3a0f1907a855c03095ad13ed2f5828273dbafb6ff8e2758"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "b00f84e94deefa469ea35bb9488cdacdc7cdbf5a9ed252643dc94ce1d28ef2ec"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "8b8c7b02c32f64a81c4991e9c5773d4fe9f7e79c550bbfe8ebcc12d3d4575cac"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "09a6c67ab2c58d962bb5f1839a29e57efdd1461cb6f4b4f397de1ee3b7adc87e"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
