class Shipper < Formula
  desc "Ship iOS and Android apps to the App Store and Play Store from your Mac"
  homepage "https://github.com/alcnsahin/shipper"
  version "0.1.12"
  license "LicenseRef-Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/alcnsahin/shipper/releases/download/v0.1.12/shipper-macos-arm64"
      sha256 "5d0ad43c2c28997c9f552bebadea97275197fd79aa5bf313eca26ba2021ab4d1"
    end
    on_intel do
      url "https://github.com/alcnsahin/shipper/releases/download/v0.1.12/shipper-macos-x86_64"
      sha256 "ab059a4ba00f8381279e2164a325966aee548d9a52522df57dc215ea9b8e9d47"
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
