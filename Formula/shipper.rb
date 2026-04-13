class Shipper < Formula
  desc "Ship iOS and Android apps to the App Store and Play Store from your Mac"
  homepage "https://github.com/alcnsahin/shipper"
  version "0.1.10"
  license "LicenseRef-Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/alcnsahin/shipper/releases/download/v0.1.10/shipper-macos-arm64"
      sha256 "9830f76af01e0ec9ff32ba0fa923d25ed1ead5ad583dddd0c1a7453690dc1bbc"
    end
    on_intel do
      url "https://github.com/alcnsahin/shipper/releases/download/v0.1.10/shipper-macos-x86_64"
      sha256 "0f2c2d72b8cc8d58f55c49bdf62ae72f4206982bf70da975ed55f93059bae36e"
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
