class Shipper < Formula
  desc "Ship iOS and Android apps to the App Store and Play Store from your Mac"
  homepage "https://github.com/alcnsahin/shipper"
  version "0.1.15"
  license "LicenseRef-Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/alcnsahin/shipper/releases/download/v0.1.15/shipper-macos-arm64"
      sha256 "7864bd088b6d393f316a53c4c6e45b821fce4e898d1c8df31bda28032e47e4ea"
    end
    on_intel do
      url "https://github.com/alcnsahin/shipper/releases/download/v0.1.15/shipper-macos-x86_64"
      sha256 "46458e184f20143eb1f881ec5b2f657ad92e1f04952e0b20fb3675d99791f794"
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
