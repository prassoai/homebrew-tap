class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "273.1+7899ee39"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "deb00829bb65afaf62fd2ad32b3e2c1faacf8d4c0b08f3848be4b8b34e7ddfb7"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "5ae24ed1595655e50cac5e655a6c1c95331f60c69cf48ac926a7cda6fce60c13"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "fc2fe19f80fc0673843e055bfc849e61961f803da0876469482c20eb6a4da8f4"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "f792ff8624362445b98a0d401d1ffd1f170d4dc2087e502744619c4adb33a4e9"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
