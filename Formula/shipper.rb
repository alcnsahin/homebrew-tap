class Shipper < Formula
  desc "Ship iOS and Android apps to the App Store and Play Store from your Mac"
  homepage "https://github.com/alcnsahin/shipper"
  version "0.1.17"
  license "LicenseRef-Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/alcnsahin/shipper/releases/download/v0.1.17/shipper-macos-arm64"
      sha256 "9c1249b0bb9bb31a1a84885edfafbf35a3666d7210ced2ebb888f7161417ec7f"
    end
    on_intel do
      url "https://github.com/alcnsahin/shipper/releases/download/v0.1.17/shipper-macos-x86_64"
      sha256 "4e72be83de6248a5ac282c876579a4820d8fccf6ba33032ac043b0cb76f516cd"
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
