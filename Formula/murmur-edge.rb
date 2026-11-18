class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "313.1+fdc8ab03"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "c3ba6469211d4aa8fafc57ce48e3c0ecf3f4610eac24605d24d5bac92c3e8ceb"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "7fafc02c1d8893f0c5ca86e038c193f1783353feb855c4b6b35e1e86ae37c0a8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "43346b46441fd6ea3d87f7cb63ff0237e91e0cba1f9d9cba403187556487a284"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "ea77accd70f0cf6c8a9592967f7d05b09da845b83cf1b52b050dceb7b16d7a20"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
