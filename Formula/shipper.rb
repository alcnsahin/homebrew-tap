class Shipper < Formula
  desc "Ship iOS and Android apps to the App Store and Play Store from your Mac"
  homepage "https://github.com/alcnsahin/shipper"
  version "0.1.20"
  license "LicenseRef-Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/alcnsahin/shipper/releases/download/v0.1.20/shipper-macos-arm64"
      sha256 "770c767bce053cf96e4d1ce7e832481be29cd523f831c74cc30c1b4570787c6f"
    end
    on_intel do
      url "https://github.com/alcnsahin/shipper/releases/download/v0.1.20/shipper-macos-x86_64"
      sha256 "627c7acf5b95f2d13d04663a431e17e8c97874568c8e98b6bd6333bd9cee3eba"
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
