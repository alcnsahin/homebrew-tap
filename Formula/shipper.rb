class Shipper < Formula
  desc "Ship iOS and Android apps to the App Store and Play Store from your Mac"
  homepage "https://github.com/alcnsahin/shipper"
  version "0.1.14"
  license "LicenseRef-Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/alcnsahin/shipper/releases/download/v0.1.14/shipper-macos-arm64"
      sha256 "427980b18be6e16ef5bf49edd31b4ac041148dc7e1a89856211d95c2f161bfb6"
    end
    on_intel do
      url "https://github.com/alcnsahin/shipper/releases/download/v0.1.14/shipper-macos-x86_64"
      sha256 "ecd8fd21fbc23c448a7569bc3479d09ec26b37d4d034880d4a59fca451692847"
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
