# Generated with JReleaser 1.17.0 at 2025-04-25T04:21:57.349285966Z

class SpotlessCli < Formula
  desc "Keep your code Spotless from the command line"
  homepage "https://github.com/diffplug/spotless-cli"
  version "0.1.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/diffplug/spotless-cli/releases/download/v0.1.0/spotless-0.1.0-linux-aarch_64.zip"
    sha256 "c23acb9d35510ea6009b27f4ff6f2ed3ebfa2075fcd4f336c7797cc8e06f968e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/diffplug/spotless-cli/releases/download/v0.1.0/spotless-0.1.0-linux-x86_64.zip"
    sha256 "77d9e1fac3ffcd89ae9c094ae3071986b63b3faaa86062f7e15cc4a98881d4aa"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/diffplug/spotless-cli/releases/download/v0.1.0/spotless-0.1.0-osx-aarch_64.zip"
    sha256 "26ddf6c3db4217e06236f8971b1b0ce5da4970c4ba86657aef4ffc745f547213"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/diffplug/spotless-cli/releases/download/v0.1.0/spotless-0.1.0-osx-x86_64.zip"
    sha256 "652b25123ff224e2f6c8aa25b89e1db3e2083d2f64f04f2ab19204c3be837c67"
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
