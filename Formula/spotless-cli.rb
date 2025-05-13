# Generated with JReleaser 1.18.0 at 2025-05-13T10:49:41.653433121Z

class SpotlessCli < Formula
  desc "Keep your code Spotless from the command line"
  homepage "https://github.com/diffplug/spotless-cli"
  version "0.1.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/diffplug/spotless-cli/releases/download/v0.1.0/spotless-0.1.0-linux-aarch_64.zip"
    sha256 "e0b50da040b7ee8b77265550d15af651b8ec6a6d1a3f28e544f6d6787c0772ac"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/diffplug/spotless-cli/releases/download/v0.1.0/spotless-0.1.0-linux-x86_64.zip"
    sha256 "5de3f2402539e42273bace5e989d0c3749f9fcd8f89e9de83d996ae58b7fed96"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/diffplug/spotless-cli/releases/download/v0.1.0/spotless-0.1.0-osx-aarch_64.zip"
    sha256 "152fc4118b7b63224611e6cbc32f1d36e628d47771b2993bf31dea000fbf631c"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/diffplug/spotless-cli/releases/download/v0.1.0/spotless-0.1.0-osx-x86_64.zip"
    sha256 "12bb2653b5df4a5655a62c64720429697a0f376f7fabb677ec4800de7abf233b"
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
