class AsciiWebcam < Formula
  desc "Terminal-based webcam that renders your live feed as colored ASCII art"
  homepage "https://github.com/xela1601/ascii-webcam"
  version "1.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/xela1601/ascii-webcam/releases/download/v1.0.1/ascii-webcam-aarch64-apple-darwin.tar.gz"
      sha256 "93d2524cdce3286e4525fec3bfce8f68d849d8f02604efe090e35c5d4a4312cb"
    else
      url "https://github.com/xela1601/ascii-webcam/releases/download/v1.0.1/ascii-webcam-x86_64-apple-darwin.tar.gz"
      sha256 "740f3eef61f10866e5e04ffcc74f176842c72d093875225a2bf752b2666c227e"
    end
  end

  def install
    bin.install "ascii-webcam"
  end

  test do
    system "#{bin}/ascii-webcam", "--version"
  end
end
