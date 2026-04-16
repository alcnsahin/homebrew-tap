class Shipper < Formula
  desc "Ship iOS and Android apps to the App Store and Play Store from your Mac"
  homepage "https://github.com/alcnsahin/shipper"
  version "0.1.18"
  license "LicenseRef-Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/alcnsahin/shipper/releases/download/v0.1.18/shipper-macos-arm64"
      sha256 "ff1949cd9bb9df63eaf120434a38eccde87b505fd566aa61ab7118d17200919f"
    end
    on_intel do
      url "https://github.com/alcnsahin/shipper/releases/download/v0.1.18/shipper-macos-x86_64"
      sha256 "b42294395afc5947b87942b279a1854a0a69246d6944b9ea80feb4ffee6c54d9"
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
