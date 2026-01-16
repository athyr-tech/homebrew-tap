# Athyr Homebrew Formula
# Auto-updated on release

class Athyr < Formula
  desc "AI agent orchestration platform"
  homepage "https://athyr.tech"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/athyr-tech/athyr-bin/releases/download/v0.1.1/athyr_0.1.1_darwin_arm64.tar.gz"
      sha256 "a8bd69ddd0c41986f730196cd2fc9b5c58b9928b08d58374d99b1f13d69372fe"
    end
    on_intel do
      url "https://github.com/athyr-tech/athyr-bin/releases/download/v0.1.1/athyr_0.1.1_darwin_amd64.tar.gz"
      sha256 "54c773fb1da96489b95fe0fe340e60c52e158bcd483e0d37e5eebe6a65b909c1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/athyr-tech/athyr-bin/releases/download/v0.1.1/athyr_0.1.1_linux_arm64.tar.gz"
      sha256 "12b8ad7a24c69aa0c3e5ed495c4f3ac3e3a87add52c582d85b5fc04be678663e"
    end
    on_intel do
      url "https://github.com/athyr-tech/athyr-bin/releases/download/v0.1.1/athyr_0.1.1_linux_amd64.tar.gz"
      sha256 "8adab783a3f47b1a82126f246908b44611e2ec9f95734cd8dcdcebacd01e5516"
    end
  end

  def install
    bin.install "athyr"
  end

  test do
    system "#{bin}/athyr", "--version"
  end
end
