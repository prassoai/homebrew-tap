class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "246.0+645cc9b0"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "f431b0fd2542bd6d37ffe2e7c0c7cfd2301df0940028818ced47fb00dd387e34"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "09a47fa43a13ae595394fd650b48d27a3f57c6eca1ccc22ee7d01e5717096f4b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "764292270a2c7d4df385f3941074b3dbdaaeb59a9a0c9bae68e80e32c38e6f09"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "4a7ceaae2e2d9f90a56d35077ce74afb2506c277a9af23ea2f19198c0e984139"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
