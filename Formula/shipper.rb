class Shipper < Formula
  desc "Ship iOS and Android apps to the App Store and Play Store from your Mac"
  homepage "https://github.com/alcnsahin/shipper"
  version "0.1.13"
  license "LicenseRef-Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/alcnsahin/shipper/releases/download/v0.1.13/shipper-macos-arm64"
      sha256 "665e8b8f665ae9eda3601c8532970ef91aedafca5a1eeb1fc636a1eebcb5bcfa"
    end
    on_intel do
      url "https://github.com/alcnsahin/shipper/releases/download/v0.1.13/shipper-macos-x86_64"
      sha256 "fecf96372c4e4dad0fafc42dd59fdc29de2cada45eae415219fb68250e14ad0d"
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
