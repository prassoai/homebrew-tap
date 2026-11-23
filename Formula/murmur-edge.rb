class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "320.2+7ac55244"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "7add44b1d7bfa60ff3c8ec9ab3d24391a59ac303d8335a27fbf7e0e39a51cc03"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "912219000a0b24b9db6f2a027b82ed6354dc67122c89b7723bbf43602738b2b2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "ec47f7eb811a7e85c6b5c94c8e8b01178aee9a2fe8514581c6142107f8807ca7"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "b7f384a83ac00d77b12895db8aad8d6009b8a2b946ffbed3aa0266b2f94cf0f8"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
