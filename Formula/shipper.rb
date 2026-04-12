class Shipper < Formula
  desc "Ship iOS and Android apps to the App Store and Play Store from your Mac"
  homepage "https://github.com/alcnsahin/shipper"
  version "0.1.0"
  license "LicenseRef-Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/alcnsahin/shipper/releases/download/v#{version}/shipper-macos-arm64"
      sha256 "PLACEHOLDER_UPDATED_BY_CI"
    end
    on_intel do
      url "https://github.com/alcnsahin/shipper/releases/download/v#{version}/shipper-macos-x86_64"
      sha256 "PLACEHOLDER_UPDATED_BY_CI"
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
