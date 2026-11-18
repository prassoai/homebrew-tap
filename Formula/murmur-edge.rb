class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "315.0+28b3cfe5"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "cf638fac63ad80cebf979a4bb2f71648b64dc65a8bc6024a868f1251fee85c4e"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "dc06e77e8ba156e63e15795ab9f3d96d6e2370cd2e55df8e3ad4de6dde4815a7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "03b5093c50456689d653e8ff15696a3fb7c4721dd00f288fe86f3a778e65d1d3"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "a7a99988aabdbbfe4adb2d152f9a6e05b9c1f9d9aa6624a344d70fb3b90a7fe2"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
