class AsciiWebcam < Formula
  desc "Terminal-based webcam that renders your live feed as colored ASCII art"
  homepage "https://github.com/xela1601/ascii-webcam"
  version "1.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/xela1601/ascii-webcam/releases/download/v1.1.0/ascii-webcam-aarch64-apple-darwin.tar.gz"
      sha256 "2db4c29bf01e8aa85913083c00021e26bedacdf0f0e9541e5ba213f654be1cf6"
    else
      url "https://github.com/xela1601/ascii-webcam/releases/download/v1.1.0/ascii-webcam-x86_64-apple-darwin.tar.gz"
      sha256 "3def796bf79f86a21904ea0f4d5c461341293fec7fa89ba2fda1252f678c935e"
    end
  end

  def install
    bin.install "ascii-webcam"
  end

  test do
    system "#{bin}/ascii-webcam", "--version"
  end
end
