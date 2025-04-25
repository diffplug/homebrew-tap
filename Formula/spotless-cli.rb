# Generated with JReleaser 1.17.0 at 2025-04-25T15:31:41.975890787Z

class SpotlessCli < Formula
  desc "Keep your code Spotless from the command line"
  homepage "https://github.com/diffplug/spotless-cli"
  version "0.1.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/diffplug/spotless-cli/releases/download/v0.1.0/spotless-0.1.0-linux-aarch_64.zip"
    sha256 "0f014ba368a6f95749dabc373bc2619ddc04e4f81814b57b769262e13dc35583"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/diffplug/spotless-cli/releases/download/v0.1.0/spotless-0.1.0-linux-x86_64.zip"
    sha256 "b857cf8e77ee0e1d4f84076a190cc81d13fe5c61c94889b8e43bad0b4e20f81d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/diffplug/spotless-cli/releases/download/v0.1.0/spotless-0.1.0-osx-aarch_64.zip"
    sha256 "34252c3f6ff069b84a8ead130b6c5ef704f6512280d895f245ccc8570d1c8ce4"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/diffplug/spotless-cli/releases/download/v0.1.0/spotless-0.1.0-osx-x86_64.zip"
    sha256 "13aad427cee8829fc013a0a8ba7f9054de77bc7a1829ed88b621b76ff65436d9"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/spotless" => "spotless"
  end

  test do
    output = shell_output("#{bin}/spotless --version")
    assert_match "0.1.0", output
  end
end
