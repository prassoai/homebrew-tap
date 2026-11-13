class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "302.1+75a55281"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "0aa71a8834b5f05545ce7769f4ea3fceb00065c20d51c370703eb64a60ccc829"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "b875e5cd45e3ccc2263fbf8d18fcb991073d9b3a8acb8754064a5f99dc9c2ec7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "a38d7acff6e76adb0673ff6c15bac40e3044f245e1b5af14c1af72dacc1f0a8c"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "0a80cf15319bf0fbe274d0c7e5ab59d35644dfbdfd0581e02ff37fd909ad0446"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
