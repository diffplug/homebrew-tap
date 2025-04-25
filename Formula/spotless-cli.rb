# Generated with JReleaser 1.17.0 at 2025-04-25T14:51:48.479994008Z

class SpotlessCli < Formula
  desc "Keep your code Spotless from the command line"
  homepage "https://github.com/diffplug/spotless-cli"
  version "0.1.1"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/diffplug/spotless-cli/releases/download/v0.1.1/spotless-0.1.1-linux-aarch_64.zip"
    sha256 "8c01b59cc4f5a539e2074d5706f6b8a7389acd0716488d19ef63aa06ee85a043"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/diffplug/spotless-cli/releases/download/v0.1.1/spotless-0.1.1-linux-x86_64.zip"
    sha256 "486175c6237a5169d7777499cd566e7ef1df9f6600df665ee80105ae72195719"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/diffplug/spotless-cli/releases/download/v0.1.1/spotless-0.1.1-osx-aarch_64.zip"
    sha256 "0e867892101569c75c11ae55727aac6a31b65c8e066b10faa6ad4853defeacc3"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/diffplug/spotless-cli/releases/download/v0.1.1/spotless-0.1.1-osx-x86_64.zip"
    sha256 "529ab8c5ecab7599b7aa572168647fa44ab26dc6d7f20473b6e9fe9027a76f78"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/spotless" => "spotless"
  end

  test do
    output = shell_output("#{bin}/spotless --version")
    assert_match "0.1.1", output
  end
end
