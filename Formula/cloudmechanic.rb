class Cloudmechanic < Formula
  desc "An OBD scanner for your AWS environment. Find cost leaks and security vulnerabilities in seconds."
  homepage "https://github.com/cloudmechanic-cli/cloudmechanic"
  version "1.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cloudmechanic-cli/cloudmechanic/releases/download/v1.4.0/cloudmechanic_1.4.0_darwin_arm64.tar.gz"
      sha256 "286164b667ce78387bc57479985c86ecc871ac5cf460a400790649cec5302861"
    end
    on_intel do
      url "https://github.com/cloudmechanic-cli/cloudmechanic/releases/download/v1.4.0/cloudmechanic_1.4.0_darwin_amd64.tar.gz"
      sha256 "561ddf54af78ff27c5e19be1a49e97d7d77e793aae0eb84101432300c9854189"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cloudmechanic-cli/cloudmechanic/releases/download/v1.4.0/cloudmechanic_1.4.0_linux_arm64.tar.gz"
      sha256 "04b53d78f10e03c766c7cd7e7e9c6e288b232dc0777458a1655a62f517123b11"
    end
    on_intel do
      url "https://github.com/cloudmechanic-cli/cloudmechanic/releases/download/v1.4.0/cloudmechanic_1.4.0_linux_amd64.tar.gz"
      sha256 "e32170dd88665e8a568e3fd98407fe1d695af4babd0936855848c5874f4aa0b6"
    end
  end

  def install
    bin.install "cloudmechanic"
  end

  test do
    system "#{bin}/cloudmechanic", "--help"
  end
end
