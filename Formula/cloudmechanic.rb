class Cloudmechanic < Formula
  desc "An OBD scanner for your AWS environment. Find cost leaks and security vulnerabilities in seconds."
  homepage "https://github.com/cloudmechanic-cli/cloudmechanic"
  version "1.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cloudmechanic-cli/cloudmechanic/releases/download/v1.6.1/cloudmechanic_1.6.1_darwin_arm64.tar.gz"
      sha256 "fe8051d0cbcfb50d14a6077a187db3823da26d0e10a4e558531dea16741e9544"
    end
    on_intel do
      url "https://github.com/cloudmechanic-cli/cloudmechanic/releases/download/v1.6.1/cloudmechanic_1.6.1_darwin_amd64.tar.gz"
      sha256 "ce6e7063b5c54cb0ffd478a153c0956d1921d806a3fba79a8c3dfd0b8695e421"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cloudmechanic-cli/cloudmechanic/releases/download/v1.6.1/cloudmechanic_1.6.1_linux_arm64.tar.gz"
      sha256 "15e3051260d13c278715dba325c5e577fb792dd4d120c4036ded905b661c9efa"
    end
    on_intel do
      url "https://github.com/cloudmechanic-cli/cloudmechanic/releases/download/v1.6.1/cloudmechanic_1.6.1_linux_amd64.tar.gz"
      sha256 "7561187d97e1391458cde418c12b608c671cdbaf0fa556b42dd0e5aa23b79405"
    end
  end

  def install
    bin.install "cloudmechanic"
  end

  test do
    system "#{bin}/cloudmechanic", "--help"
  end
end
