class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "277.0+cf715988"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "d83203254b31bc49ee5f981612f2c08c0c60c7568f621c34a34a7aa8e38f4b66"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "51c3a105930419c00e9bb1d8ace1b0f7c8d9a3dcbf6f6fddc3ef5dd419f8b238"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "99bd8303c273efb5920e9739488f704613bdf18a72c9a48d57f24f086e0cbe6a"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "439e36438a7aac38594cd91bab697b1ad30cc04c76b4d6857f8c3db9203a4d73"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
