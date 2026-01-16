# Athyr Homebrew Formula
# Auto-updated on release via: make update-homebrew VERSION=vX.Y.Z

class Athyr < Formula
  desc "AI agent orchestration platform"
  homepage "https://athyr.tech"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/athyr-tech/athyr-bin/releases/download/v0.1.0/athyr_0.1.0_darwin_arm64.tar.gz"
      sha256 "3df36ea5815d9e3e29fa5c14db5e5b7597a213df59dee3bcc9f55a38582b9249"
    end
    on_intel do
      url "https://github.com/athyr-tech/athyr-bin/releases/download/v0.1.0/athyr_0.1.0_darwin_amd64.tar.gz"
      sha256 "504796f7971ea244bcb46b419d002226190c6a9ce05e3298d530ce6a33fb48ee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/athyr-tech/athyr-bin/releases/download/v0.1.0/athyr_0.1.0_linux_arm64.tar.gz"
      sha256 "41d56cfd66c95929173df59a4b6fef155376e43ec59c913d59bf89f35cc687c2"
    end
    on_intel do
      url "https://github.com/athyr-tech/athyr-bin/releases/download/v0.1.0/athyr_0.1.0_linux_amd64.tar.gz"
      sha256 "2d1ce1136370cd5c7fb3609b1067b2f5a15491d2b66762dd1db29fd669f20488"
    end
  end

  def install
    bin.install "athyr"
  end

  test do
    system "#{bin}/athyr", "--version"
  end
end
