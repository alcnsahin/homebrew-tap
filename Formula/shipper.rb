class Shipper < Formula
  desc "Ship iOS and Android apps to the App Store and Play Store from your Mac"
  homepage "https://github.com/alcnsahin/shipper"
  version "0.1.11"
  license "LicenseRef-Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/alcnsahin/shipper/releases/download/v0.1.11/shipper-macos-arm64"
      sha256 "d3aefa8095951ad79101be596ff03f3722a0c134a2ba0571d92a7debd4b970f1"
    end
    on_intel do
      url "https://github.com/alcnsahin/shipper/releases/download/v0.1.11/shipper-macos-x86_64"
      sha256 "3921ea90cd837fc12caa63590b8c42c95ee3dfb4d3429b1ad7b06d067c47fb73"
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
