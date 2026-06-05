class Shipper < Formula
  desc "Ship iOS and Android apps to the App Store and Play Store from your Mac"
  homepage "https://github.com/alcnsahin/shipper"
  version "0.1.21"
  license "LicenseRef-Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/alcnsahin/shipper/releases/download/v0.1.21/shipper-macos-arm64"
      sha256 "e0e6f7d01a4c3bde63cbd262c66de81bdb0c4b51b6b6062dfb9f740970759520"
    end
    on_intel do
      url "https://github.com/alcnsahin/shipper/releases/download/v0.1.21/shipper-macos-x86_64"
      sha256 "97119647271800cdded8aeb84e1fbd52b8778f7e9550921ebbad4cedb9466a5d"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "shipper-macos-arm64" => "shipper"
    else
      bin.install "shipper-macos-x86_64" => "shipper"
    end
  end

  test do
    system bin/"shipper", "--version"
  end
end
