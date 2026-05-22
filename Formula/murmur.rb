class Murmur < Formula
  desc "CLI for the Murmur agent orchestration platform"
  homepage "https://github.com/prassoai/murmuration"
  version "93.0"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v93.0/murmur-darwin-amd64"
      sha256 "2a951aa55ff27a6d174f8c5e86f44962160ab0725a93ae81cb6929d83783cf15"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v93.0/murmur-darwin-arm64"
      sha256 "9abf2333891a7a64b65c9f563cfe45cf4c89a711d30ca6d45c2df1c346f62492"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v93.0/murmur-linux-amd64"
      sha256 "ad474c85fdb0c79c135a4cf2177392317c34bb65a5d08b2be3ce9fb1207dff97"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur version")
  end
end
