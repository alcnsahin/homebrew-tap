class Shipper < Formula
  desc "Ship iOS and Android apps to the App Store and Play Store from your Mac"
  homepage "https://github.com/alcnsahin/shipper"
  version "0.1.2"
  license "LicenseRef-Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/alcnsahin/shipper/releases/download/v0.1.2/shipper-macos-arm64"
      sha256 "38569f56af301082121ed33093b1ce8551f9a7694ffab60f69d73a38b4fce99a"
    end
    on_intel do
      url "https://github.com/alcnsahin/shipper/releases/download/v0.1.2/shipper-macos-x86_64"
      sha256 "03efb22c606f41477d9d09095e5058f77b290406f147b46e171fec2c9a551d90"
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
