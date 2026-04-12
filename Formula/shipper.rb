class Shipper < Formula
  desc "Ship iOS and Android apps to the App Store and Play Store from your Mac"
  homepage "https://github.com/alcnsahin/shipper"
  version "0.1.0"
  license "LicenseRef-Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/alcnsahin/shipper/releases/download/v0.1.0/shipper-macos-arm64"
      sha256 "4efc19799fbbbb048472c207d9fc9f8ae0ff6db8a7f977b8e2a9ee5c47c1a58a"
    end
    on_intel do
      url "https://github.com/alcnsahin/shipper/releases/download/v0.1.0/shipper-macos-x86_64"
      sha256 "45cb837e303455fba6864ec3d50589b1abab71c9517728c338794e45222c9ee1"
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
