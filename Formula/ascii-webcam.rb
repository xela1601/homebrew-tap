class AsciiWebcam < Formula
  desc "Terminal-based webcam that renders your live feed as colored ASCII art"
  homepage "https://github.com/xela1601/ascii-webcam"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/xela1601/ascii-webcam/releases/download/v1.0.0/ascii-webcam-aarch64-apple-darwin.tar.gz"
      sha256 "49f7094c46b979ac0574cdef6fe725b303ec4325c1aa6d0d85383d8200268a25"
    else
      url "https://github.com/xela1601/ascii-webcam/releases/download/v1.0.0/ascii-webcam-x86_64-apple-darwin.tar.gz"
      sha256 "c3f9f553e3a17bdcb0df9f890aa568be680c93696ab48910624f84678aa8fa82"
    end
  end

  def install
    bin.install "ascii-webcam"
  end

  test do
    system "#{bin}/ascii-webcam", "--version"
  end
end
