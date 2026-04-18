class Shipper < Formula
  desc "Ship iOS and Android apps to the App Store and Play Store from your Mac"
  homepage "https://github.com/alcnsahin/shipper"
  version "0.1.19"
  license "LicenseRef-Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/alcnsahin/shipper/releases/download/v0.1.19/shipper-macos-arm64"
      sha256 "d77fd165da3772ea141c84715d91b1e233005779e5f37047445a8e04871992e3"
    end
    on_intel do
      url "https://github.com/alcnsahin/shipper/releases/download/v0.1.19/shipper-macos-x86_64"
      sha256 "dcab8164113d8754fdec03c36c38bee8248474362e6ce40db458c28ee8b68b43"
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
