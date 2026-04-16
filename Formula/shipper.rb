class Shipper < Formula
  desc "Ship iOS and Android apps to the App Store and Play Store from your Mac"
  homepage "https://github.com/alcnsahin/shipper"
  version "0.1.16"
  license "LicenseRef-Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/alcnsahin/shipper/releases/download/v0.1.16/shipper-macos-arm64"
      sha256 "8c4605d4745c2249578b13a4cd359563f61773c6d14004e376b320ba924399b1"
    end
    on_intel do
      url "https://github.com/alcnsahin/shipper/releases/download/v0.1.16/shipper-macos-x86_64"
      sha256 "a8eb6a617ee195055b94070568e157fbed2016484031dbf85c2c4d43e09644ca"
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
