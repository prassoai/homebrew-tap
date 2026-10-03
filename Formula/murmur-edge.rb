class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "243.1+3937c30e"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "66712150a14a9067eb9d1cfbe7a8106542a6acd50aecf1931fa48b6bebe40b27"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "7987bf8bb59b7c8b2c890e9856523344b3bee6a612966ec3aeeb6082a40d77d9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "7aab17eba8c5eba4247eaa4c4f90b33014584859911d4069f4cc1babdafe8b51"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "cb38ccbeb99fef698bfee5f5dd825cdba4ad75f2cda7fb9ad11eec488853b00e"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
