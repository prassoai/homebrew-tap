class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "289.1+88d80ac7"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "315f4a53c4cbbb4c79de89cefff017f76ee25fd119dbd94e1449411c5c47f1a4"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "7cfd3c97e6dc9fb87e93bf2c93bcf447724c58ac353d1cd333ad9b404fcf751a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "8dc859ff3f4abc4e5fa420a915b5263e4bd9be2b9c4823d2bfa1214b206f4bad"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "e5476a6c34b16a3396a28c21e40866d66aa5b635ec8d5add17770a33212ba914"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
