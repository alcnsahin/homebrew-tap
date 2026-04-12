class Shipper < Formula
  desc "Ship iOS and Android apps to the App Store and Play Store from your Mac"
  homepage "https://github.com/alcnsahin/shipper"
  version "0.1.1"
  license "LicenseRef-Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/alcnsahin/shipper/releases/download/v0.1.1/shipper-macos-arm64"
      sha256 "4c2b42be0f51b67011ad3c1243dab51c71fab1b97132d77cee093bbac1faf15d"
    end
    on_intel do
      url "https://github.com/alcnsahin/shipper/releases/download/v0.1.1/shipper-macos-x86_64"
      sha256 "296086c4ccf21ab3a90ed9bb7b2b4394a1ef057f554a5c9d49389bba6182be05"
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
