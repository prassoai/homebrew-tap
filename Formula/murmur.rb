class Murmur < Formula
  desc "CLI for the Murmur agent orchestration platform"
  homepage "https://github.com/prassoai/murmuration"
  version "76.0"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v76.0/murmur-darwin-amd64"
      sha256 "5acaa7ea2b0ade80a9374069187528f0456c823aafe15b704a8afa4e060f8a83"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v76.0/murmur-darwin-arm64"
      sha256 "92ea6e3fb46fe68945eb82fbc446bb0ec2eb67eb77f642987f3a898670ebbdfb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v76.0/murmur-linux-amd64"
      sha256 "0d43dbe05b18fa7f868fea50682376ed041396173e0b7439a036f2df5c82f212"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur version")
  end
end
