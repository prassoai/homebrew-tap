class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "290.0+1f728aeb"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "5db5d47c8b4f320c614d382ea25dd41058643237cad31171f26bad68cf7c5a9f"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "cf387a022e8e6d7d3b4d73e1411afdd3e76d3ae8f277a3f1e316ce1cf8150a11"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "7290812b8d49dfbacc9c92ad2623f9b205198defefe98a0652c1a13dc17cca0e"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "3dc2fa0eb5dc3ba82dc97ba4bd18a11625a07c01cd3bf2bb140a7fe9c49dac06"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
