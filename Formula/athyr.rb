# Athyr Homebrew Formula

class Athyr < Formula
  desc "AI agent orchestration platform"
  homepage "https://athyr.tech"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/athyr-tech/athyr-bin/releases/download/v0.1.3/athyr_0.1.3_darwin_arm64.tar.gz"
      sha256 "ba08185e33c0e1122b9b7dac9bd35a09077745633a4bcfa8566dc02f397cc025"
    end
    on_intel do
      url "https://github.com/athyr-tech/athyr-bin/releases/download/v0.1.3/athyr_0.1.3_darwin_amd64.tar.gz"
      sha256 "53aec7c753610ecb43ac3222dbdb14b161f4507274260f95e4577c7ccdc6695b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/athyr-tech/athyr-bin/releases/download/v0.1.3/athyr_0.1.3_linux_arm64.tar.gz"
      sha256 "66f0863e4a808ca309dde239843b9d1e2dffe9c7fff16ef8c7362e1455d775cd"
    end
    on_intel do
      url "https://github.com/athyr-tech/athyr-bin/releases/download/v0.1.3/athyr_0.1.3_linux_amd64.tar.gz"
      sha256 "9c9cd8441f858d1def564270632a0078458e675d6206fbdbf3272c8218d5413c"
    end
  end

  def install
    bin.install "athyr"
  end

  test do
    system "#{bin}/athyr", "--version"
  end
end
