# Generated with JReleaser 1.17.0 at 2025-04-24T20:43:59.292962572Z

class SpotlessCli < Formula
  desc "Keep your code Spotless from the command line"
  homepage "https://github.com/diffplug/spotless-cli"
  version "0.1.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/diffplug/spotless-cli/releases/download/v0.1.0/spotless-0.1.0-linux-aarch_64.zip"
    sha256 "2a3bd4eabc2a0c9855f462dc91221f90c4359018e490fb938a0f32918ed211f7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/diffplug/spotless-cli/releases/download/v0.1.0/spotless-0.1.0-linux-x86_64.zip"
    sha256 "b4369cfe1b44e48cecfb3e790ec964671624e4edf2ddbcbea61d87039ad61ea5"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/diffplug/spotless-cli/releases/download/v0.1.0/spotless-0.1.0-osx-aarch_64.zip"
    sha256 "a7a6b628ace8b2212acd918c8840c6e3bac7f5201ceab38d2ceb7a31e81a6615"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/diffplug/spotless-cli/releases/download/v0.1.0/spotless-0.1.0-osx-x86_64.zip"
    sha256 "ee4502b3f833663798ea35a624e90ada5aa07397b31603225ec6dfa8bb58b923"
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
