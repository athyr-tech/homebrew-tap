# Athyr Homebrew Formula

class Athyr < Formula
  desc "AI agent orchestration platform"
  homepage "https://athyr.tech"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/athyr-tech/athyr-bin/releases/download/v0.1.2/athyr_0.1.2_darwin_arm64.tar.gz"
      sha256 "0efb8371d13bf0eda1fed779c3e7bcd5124eda432f185aef71bb180e6f13d247"
    end
    on_intel do
      url "https://github.com/athyr-tech/athyr-bin/releases/download/v0.1.2/athyr_0.1.2_darwin_amd64.tar.gz"
      sha256 "f5708129c74dc7d40f7327b427658005e5aadfde135b8aa49a0f8f1bfb61adb6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/athyr-tech/athyr-bin/releases/download/v0.1.2/athyr_0.1.2_linux_arm64.tar.gz"
      sha256 "39ed4de70d5fbc213ab6295a3aa897aa7bb7f632b516a221c61eecb55eacca7f"
    end
    on_intel do
      url "https://github.com/athyr-tech/athyr-bin/releases/download/v0.1.2/athyr_0.1.2_linux_amd64.tar.gz"
      sha256 "173a721279e0e5ec33b3d2aafc8bf9ec5f093c4cd7e24264b9bd074ca83808ab"
    end
  end

  def install
    bin.install "athyr"
  end

  test do
    system "#{bin}/athyr", "--version"
  end
end
