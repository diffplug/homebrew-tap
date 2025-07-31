# Generated with JReleaser 1.19.0 at 2025-07-31T14:39:09.75321782Z

class SpotlessCli < Formula
  desc "Keep your code Spotless from the command line"
  homepage "https://github.com/diffplug/spotless-cli"
  version "0.2.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/diffplug/spotless-cli/releases/download/v0.2.0/spotless-0.2.0-linux-aarch_64.zip"
    sha256 "28259391b698e6b43d2e121e08d3e1c29ce2fd629d456f00e5669ae48d329600"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/diffplug/spotless-cli/releases/download/v0.2.0/spotless-0.2.0-linux-x86_64.zip"
    sha256 "fcb43780a1e5fd57fae6e379e17f4b45ff97b469d49d5da740b091e1ea847a8c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/diffplug/spotless-cli/releases/download/v0.2.0/spotless-0.2.0-osx-aarch_64.zip"
    sha256 "0e568ebffcb5e09fefa5796c8d8f08c11f442058f7b286c3f283bf435656b0d6"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/diffplug/spotless-cli/releases/download/v0.2.0/spotless-0.2.0-osx-x86_64.zip"
    sha256 "e2587cca2cec88e0df51c273ad8ade6fc3a1911a7ceffd6e01083e1b2f88ab2b"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/spotless" => "spotless"
  end

  test do
    output = shell_output("#{bin}/spotless --version")
    assert_match "0.2.0", output
  end
end
