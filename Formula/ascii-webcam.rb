class AsciiWebcam < Formula
  desc "Terminal-based webcam that renders your live feed as colored ASCII art"
  homepage "https://github.com/xela1601/ascii-webcam"
  version "1.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/xela1601/ascii-webcam/releases/download/v1.2.1/ascii-webcam-aarch64-apple-darwin.tar.gz"
      sha256 "27ad9929ab059d9ffd9b60c684fb47740ef8dd41c20b2cd825b436bb724a4ec6"
    else
      url "https://github.com/xela1601/ascii-webcam/releases/download/v1.2.1/ascii-webcam-x86_64-apple-darwin.tar.gz"
      sha256 "0f6de00a3e8dcdf994b69bf51c1b4398a8619d0219a4f20db162c1ac2eb7b61d"
    end
  end

  def install
    bin.install "ascii-webcam"
  end

  test do
    system "#{bin}/ascii-webcam", "--version"
  end
end
