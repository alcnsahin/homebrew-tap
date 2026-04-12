class Shipper < Formula
  desc "Ship iOS and Android apps to the App Store and Play Store from your Mac"
  homepage "https://github.com/alcnsahin/shipper"
  version "0.1.3"
  license "LicenseRef-Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/alcnsahin/shipper/releases/download/v0.1.3/shipper-macos-arm64"
      sha256 "3d88ef7d09744e7c3654f43aed6c9cfadd87f30dc7f781e63bc7189dc86d047e"
    end
    on_intel do
      url "https://github.com/alcnsahin/shipper/releases/download/v0.1.3/shipper-macos-x86_64"
      sha256 "53f5740db6cc8b19aeb976c6cba36642080dcbfe336911bcc9a73127d6cfab89"
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
