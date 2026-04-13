class Cloudmechanic < Formula
  desc "An OBD scanner for your AWS environment. Find cost leaks and security vulnerabilities in seconds."
  homepage "https://github.com/cloudmechanic-cli/cloudmechanic"
  version "1.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cloudmechanic-cli/cloudmechanic/releases/download/v1.5.0/cloudmechanic_1.5.0_darwin_arm64.tar.gz"
      sha256 "ae9c176372f261d666a3c561e8b2aa445638e6a247b7c9d7ec856f0cab03e2eb"
    end
    on_intel do
      url "https://github.com/cloudmechanic-cli/cloudmechanic/releases/download/v1.5.0/cloudmechanic_1.5.0_darwin_amd64.tar.gz"
      sha256 "fa219a40213370ce7f4c7a0382905804d55e47c3400fe91a904b8476c820b609"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cloudmechanic-cli/cloudmechanic/releases/download/v1.5.0/cloudmechanic_1.5.0_linux_arm64.tar.gz"
      sha256 "93b8cbd34a0e86a84a2ec6cb50ee4e71320ee2d57945ed3dbc6455931c6f2f50"
    end
    on_intel do
      url "https://github.com/cloudmechanic-cli/cloudmechanic/releases/download/v1.5.0/cloudmechanic_1.5.0_linux_amd64.tar.gz"
      sha256 "81006fa0164967ef1e5db25adfebb7fdf8763742830221ad3528f6ee4cd29be0"
    end
  end

  def install
    bin.install "cloudmechanic"
  end

  test do
    system "#{bin}/cloudmechanic", "--help"
  end
end
