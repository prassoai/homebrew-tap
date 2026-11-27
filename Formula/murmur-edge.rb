class MurmurEdge < Formula
  desc "CLI for the Murmur agent orchestration platform (edge channel)"
  homepage "https://github.com/prassoai/murmuration"
  version "331.1+1b14626a"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-amd64"
      sha256 "84b3e687b2ce7f6efd7ea3e8527bf3a3937b8c796f77aac97109cab18ae9e0a2"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-darwin-arm64"
      sha256 "09d88fa4ce2b10ca2901a5e7c3e82ee0943d573f780bbc993101accf5144dbba"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-amd64"
      sha256 "55dbb908656ab1ad3470cc1c9289b9383fa7165b839d6d28aa9c08d9b0546ff2"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/dev/murmur-edge-linux-arm64"
      sha256 "5aa0fd6c0806e47f18bca7ef45b7ea5bfd3e8885ed2fdaf546432b6813dc4335"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur-edge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur-edge version")
  end
end
