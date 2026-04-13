class Cloudmechanic < Formula
  desc "An OBD scanner for your AWS environment. Find cost leaks and security vulnerabilities in seconds."
  homepage "https://github.com/cloudmechanic-cli/cloudmechanic"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cloudmechanic-cli/cloudmechanic/releases/download/v1.3.0/cloudmechanic_1.3.0_darwin_arm64.tar.gz"
      sha256 "651f07bdf5e34fe8849eb2fc01015ed1adc9af946d485a1e90f6ee30698941e9"
    end
    on_intel do
      url "https://github.com/cloudmechanic-cli/cloudmechanic/releases/download/v1.3.0/cloudmechanic_1.3.0_darwin_amd64.tar.gz"
      sha256 "2f5989f9ad12525a0ad417ce8b97e5bdba7319cc122aa3766283c599aa6e0c5c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cloudmechanic-cli/cloudmechanic/releases/download/v1.3.0/cloudmechanic_1.3.0_linux_arm64.tar.gz"
      sha256 "18a39a526b4e063f7ab881afbe3345b11aa58a0a36aa83deabf44880f03d37d0"
    end
    on_intel do
      url "https://github.com/cloudmechanic-cli/cloudmechanic/releases/download/v1.3.0/cloudmechanic_1.3.0_linux_amd64.tar.gz"
      sha256 "bdbd10dbdd5ec7041c1403cff8ed0729b1e16225adecc6d065ae1e3272c41b9e"
    end
  end

  def install
    bin.install "cloudmechanic"
  end

  test do
    system "#{bin}/cloudmechanic", "--help"
  end
end
