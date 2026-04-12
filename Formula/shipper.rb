class Shipper < Formula
  desc "Ship iOS and Android apps to the App Store and Play Store from your Mac"
  homepage "https://github.com/alcnsahin/shipper"
  version "0.1.9"
  license "LicenseRef-Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/alcnsahin/shipper/releases/download/v0.1.9/shipper-macos-arm64"
      sha256 "eeafb1be78a0cf8164f3e8d77704863be02ae244ca0f2879f89d72225669da13"
    end
    on_intel do
      url "https://github.com/alcnsahin/shipper/releases/download/v0.1.9/shipper-macos-x86_64"
      sha256 "6a27d307423eabc1f758c35a18348f11ee81da015ab2778272fb69f5319360b6"
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
