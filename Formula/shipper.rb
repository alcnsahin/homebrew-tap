class Shipper < Formula
  desc "Ship iOS and Android apps to the App Store and Play Store from your Mac"
  homepage "https://github.com/alcnsahin/shipper"
  version "0.1.7"
  license "LicenseRef-Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/alcnsahin/shipper/releases/download/v0.1.7/shipper-macos-arm64"
      sha256 "f73d8b1a641c3bab708b0c535cffae0ceb2bdffae84b71488b261d2106d6d6d9"
    end
    on_intel do
      url "https://github.com/alcnsahin/shipper/releases/download/v0.1.7/shipper-macos-x86_64"
      sha256 "ec2ecb04973d54a0c7131df9dd8864bfa75aa3cd8d9c09b01484b7d71c4ff186"
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
