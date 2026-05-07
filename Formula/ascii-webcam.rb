class AsciiWebcam < Formula
  desc "Terminal-based webcam that renders your live feed as colored ASCII art"
  homepage "https://github.com/xela1601/ascii-webcam"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/xela1601/ascii-webcam/releases/download/v1.0.0/ascii-webcam-aarch64-apple-darwin.tar.gz"
      sha256 "eccb2b7946d4529f8b8e96582316beb621d795c9ab791b912c5d83ce5f7fd794"
    else
      url "https://github.com/xela1601/ascii-webcam/releases/download/v1.0.0/ascii-webcam-x86_64-apple-darwin.tar.gz"
      sha256 "3eaf1beca2ca622f1d689228be1e455b006deb4d7b7699dfdeea2bd3ccb145d7"
    end
  end

  def install
    bin.install "ascii-webcam"
  end

  test do
    system "#{bin}/ascii-webcam", "--version"
  end
end
