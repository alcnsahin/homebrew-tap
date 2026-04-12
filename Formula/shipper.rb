class Shipper < Formula
  desc "Ship iOS and Android apps to the App Store and Play Store from your Mac"
  homepage "https://github.com/alcnsahin/shipper"
  version "0.1.6"
  license "LicenseRef-Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/alcnsahin/shipper/releases/download/v0.1.6/shipper-macos-arm64"
      sha256 "57998d61628c282d7fa5c1a13aea2088d6627482534592b18e84bab125021697"
    end
    on_intel do
      url "https://github.com/alcnsahin/shipper/releases/download/v0.1.6/shipper-macos-x86_64"
      sha256 "a853dc14bf6250f875fc1fe826c8e6c3f6c44d5073435ce52f5c211689cdf171"
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
