# Generated with JReleaser 1.17.0 at 2025-04-24T21:17:20.194910788Z

class SpotlessCli < Formula
  desc "Keep your code Spotless from the command line"
  homepage "https://github.com/diffplug/spotless-cli"
  version "0.1.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/diffplug/spotless-cli/releases/download/v0.1.0/spotless-0.1.0-linux-aarch_64.zip"
    sha256 "1438faca2b592c47c81cd3f14bfb1680a09f9bc414ea65b16995aeaccd0fc0ea"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/diffplug/spotless-cli/releases/download/v0.1.0/spotless-0.1.0-linux-x86_64.zip"
    sha256 "7a05dcb17a056c200c713c1464782b14ad4988c9648cb0a3997725b0446ba806"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/diffplug/spotless-cli/releases/download/v0.1.0/spotless-0.1.0-osx-aarch_64.zip"
    sha256 "fae4783799a95ff62823de8ea70adc9f68c9f57e801ce664c709a388faf34842"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/diffplug/spotless-cli/releases/download/v0.1.0/spotless-0.1.0-osx-x86_64.zip"
    sha256 "b5780e302150bb5d9f3bfe54abf36868a96aa5dccf5df1e1d11cbdf23ea70201"
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
