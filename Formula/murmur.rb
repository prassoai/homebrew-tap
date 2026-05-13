class Murmur < Formula
  desc "CLI for the Murmur agent orchestration platform"
  homepage "https://github.com/prassoai/murmuration"
  version "79.1"

  on_macos do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v79.1/murmur-darwin-amd64"
      sha256 "c96dd9d654867c8cb81d586bb30a3b2674003d91d25bd154664a9adeca851848"
    end
    on_arm do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v79.1/murmur-darwin-arm64"
      sha256 "a08ef087f436dbe5e9d3f01e12994f60b8b701a2f69024e5501359bdbbe86d7c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prassoai/homebrew-tap/releases/download/v79.1/murmur-linux-amd64"
      sha256 "15d10aba8e9b05ed73f6b9f557dbb6ed35764aad633ee8d1a42e1379427e6c27"
    end
  end

  def install
    bin.install stable.url.split("/").last => "murmur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur version")
  end
end
