class Shipper < Formula
  desc "Ship iOS and Android apps to the App Store and Play Store from your Mac"
  homepage "https://github.com/alcnsahin/shipper"
  version "0.1.8"
  license "LicenseRef-Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/alcnsahin/shipper/releases/download/v0.1.8/shipper-macos-arm64"
      sha256 "40ad38d8a4d12c0744bd5ecabf87360828880d5c263b6d64ecc9750150a13687"
    end
    on_intel do
      url "https://github.com/alcnsahin/shipper/releases/download/v0.1.8/shipper-macos-x86_64"
      sha256 "37528806696900e1e46e97bf4a29717313130d51f4cd159d3448e3c9f2420b15"
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
