class Cloudmechanic < Formula
  desc "An OBD scanner for your AWS environment. Find cost leaks and security vulnerabilities in seconds."
  homepage "https://github.com/cloudmechanic-cli/cloudmechanic"
  version "1.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cloudmechanic-cli/cloudmechanic/releases/download/v1.6.0/cloudmechanic_1.6.0_darwin_arm64.tar.gz"
      sha256 "fa8aa5047cedfdb3b772e1685c243e465140f1063575bf749c453cc0899a1b6b"
    end
    on_intel do
      url "https://github.com/cloudmechanic-cli/cloudmechanic/releases/download/v1.6.0/cloudmechanic_1.6.0_darwin_amd64.tar.gz"
      sha256 "18dd93c1d7c87611a09bd76b7c9a082949ba90f0b5e856831d026f386c9010e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cloudmechanic-cli/cloudmechanic/releases/download/v1.6.0/cloudmechanic_1.6.0_linux_arm64.tar.gz"
      sha256 "d552ffa33e744ae8d26c050f875cc9ed9b1d777e3dd6f35e0a13a4720b1ab2b7"
    end
    on_intel do
      url "https://github.com/cloudmechanic-cli/cloudmechanic/releases/download/v1.6.0/cloudmechanic_1.6.0_linux_amd64.tar.gz"
      sha256 "e2a417e9f47d8fc6e3fef2fae2a0d2f50463c7725b10becf9e11af25a0fe88bc"
    end
  end

  def install
    bin.install "cloudmechanic"
  end

  test do
    system "#{bin}/cloudmechanic", "--help"
  end
end
