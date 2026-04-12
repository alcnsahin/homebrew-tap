class Shipper < Formula
  desc "Ship iOS and Android apps to the App Store and Play Store from your Mac"
  homepage "https://github.com/alcnsahin/shipper"
  version "0.1.5"
  license "LicenseRef-Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/alcnsahin/shipper/releases/download/v0.1.5/shipper-macos-arm64"
      sha256 "2ebda6dafe8f620c8586770f5788a681b3a3c0015ac449fbb0810a7c5bf40ab8"
    end
    on_intel do
      url "https://github.com/alcnsahin/shipper/releases/download/v0.1.5/shipper-macos-x86_64"
      sha256 "afbf266e23f99ffc8c5672046389cb3972036fb9e63090987c892efc0f9697bb"
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
