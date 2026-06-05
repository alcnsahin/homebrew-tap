class Shipper < Formula
  desc "Ship iOS and Android apps to the App Store and Play Store from your Mac"
  homepage "https://github.com/alcnsahin/shipper"
  version "0.1.22"
  license "LicenseRef-Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/alcnsahin/shipper/releases/download/v0.1.22/shipper-macos-arm64"
      sha256 "418ac35d97d54b772f921d1f30ecbc71ce7155409f6c30c252f79835806c422c"
    end
    on_intel do
      url "https://github.com/alcnsahin/shipper/releases/download/v0.1.22/shipper-macos-x86_64"
      sha256 "da8e65afca443152476936e5edf5b7a3d63d78076339ebc69605478c4dc83282"
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
