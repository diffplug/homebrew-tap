# Generated with JReleaser 1.18.0 at 2025-06-02T19:12:37.7666696Z

class SpotlessCli < Formula
  desc "Keep your code Spotless from the command line"
  homepage "https://github.com/diffplug/spotless-cli"
  version "0.1.1"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/diffplug/spotless-cli/releases/download/v0.1.1/spotless-0.1.1-linux-aarch_64.zip"
    sha256 "964a0788e98ee2dd93e8352a228d5b42a6723a3a250ab21642b8f6a97182fb33"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/diffplug/spotless-cli/releases/download/v0.1.1/spotless-0.1.1-linux-x86_64.zip"
    sha256 "f45b58da075c4e32b396fa509422f9ff422b5f6e211f56b92b2d938df6e63be4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/diffplug/spotless-cli/releases/download/v0.1.1/spotless-0.1.1-osx-aarch_64.zip"
    sha256 "6dec4aea6953807c77b514487afd490ed7e933213c305a70c9476d7d7d5b27d7"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/diffplug/spotless-cli/releases/download/v0.1.1/spotless-0.1.1-osx-x86_64.zip"
    sha256 "d7b1711f29c16520ffe107a0f1b7cbb76ae037e86a1957c420956aedf807a8c5"
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
