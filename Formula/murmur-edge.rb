class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "221.3+695ac9a8"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "f0d9c32ce978d5d813d0be471401955ad355747835c71e4c6fcb0b05f1c9e33c"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "f2b2f6f4e2586712533bd5d03d75f7e2815c11e9baea48f8ff8176844e28b3dd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "6f99881ca94ea6955fc2622a4c227f4785e58522fcdfb4023d6d7fe4086d8400"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "fc639f2ee3da7c93f9f334c0bd52537a9035c276b7697a3832c698a2c0bbf0fe"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
