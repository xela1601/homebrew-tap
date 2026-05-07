class AsciiWebcam < Formula
  desc "Terminal-based webcam that renders your live feed as colored ASCII art"
  homepage "https://github.com/xela1601/ascii-webcam"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/xela1601/ascii-webcam/releases/download/v1.0.0/ascii-webcam-aarch64-apple-darwin.tar.gz"
      sha256 "81fe70e8368a98648529a54f7d9b248898fcf60a3fb64fec6fd98ac3f1e56abd"
    else
      url "https://github.com/xela1601/ascii-webcam/releases/download/v1.0.0/ascii-webcam-x86_64-apple-darwin.tar.gz"
      sha256 "b4d54ee219ff95382807a0123d1ef29cce75c83a46c1db656a891d9369368b9b"
    end
  end

  def install
    bin.install "ascii-webcam"
  end

  test do
    system "#{bin}/ascii-webcam", "--version"
  end
end
