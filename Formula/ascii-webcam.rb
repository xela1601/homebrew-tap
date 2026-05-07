class AsciiWebcam < Formula
  desc "Terminal-based webcam that renders your live feed as colored ASCII art"
  homepage "https://github.com/xela1601/ascii-webcam"
  version "1.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/xela1601/ascii-webcam/releases/download/v1.1.1/ascii-webcam-aarch64-apple-darwin.tar.gz"
      sha256 "0eea22037d789eb9896b3d4e9d373f6997f453d9cce970df1853a36f42a881c4"
    else
      url "https://github.com/xela1601/ascii-webcam/releases/download/v1.1.1/ascii-webcam-x86_64-apple-darwin.tar.gz"
      sha256 "85d5d304ae4c45738f032c2b24c8508808f6e4c9dc04b44fdcda70dd34de7bad"
    end
  end

  def install
    bin.install "ascii-webcam"
  end

  test do
    system "#{bin}/ascii-webcam", "--version"
  end
end
