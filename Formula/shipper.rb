class Shipper < Formula
  desc "Ship iOS and Android apps to the App Store and Play Store from your Mac"
  homepage "https://github.com/alcnsahin/shipper"
  version "0.1.4"
  license "LicenseRef-Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/alcnsahin/shipper/releases/download/v0.1.4/shipper-macos-arm64"
      sha256 "f47bbdfbbd9dba952732d7375260141f76ff48d28894d4da6fd462b1ce79edcc"
    end
    on_intel do
      url "https://github.com/alcnsahin/shipper/releases/download/v0.1.4/shipper-macos-x86_64"
      sha256 "a9bbbb257a66ed296ec0c5a6420cc617dbc96f498e77ce9bca71f747d4b73cbf"
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
