class AsciiWebcam < Formula
  desc "Terminal-based webcam that renders your live feed as colored ASCII art"
  homepage "https://github.com/xela1601/ascii-webcam"
  version "1.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/xela1601/ascii-webcam/releases/download/v1.2.0/ascii-webcam-aarch64-apple-darwin.tar.gz"
      sha256 "09471a95bc507f070d98dd9e3f4af4331d7f0b1f6c98f931952262a5399de4d5"
    else
      url "https://github.com/xela1601/ascii-webcam/releases/download/v1.2.0/ascii-webcam-x86_64-apple-darwin.tar.gz"
      sha256 "9263dccbd18a1189609f4f39c7cecf3a85e6931a59ebbcbc9577db1c42e8b537"
    end
  end

  def install
    bin.install "ascii-webcam"
  end

  test do
    system "#{bin}/ascii-webcam", "--version"
  end
end
