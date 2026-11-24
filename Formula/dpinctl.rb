class Dpinctl < Formula
  desc "Command line for DPIN Connect"
  homepage "https://github.com/manitobahealth/homebrew-tap"
  version "0.8.2"

  on_macos do
    on_arm do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.8.2/dpinctl_0.8.2_darwin_arm64.tar.gz"
      sha256 "94fd053b90dead5657ac1eb60a502adf2494648119d7a13cfd525f2d9b0696a7"
    end

    on_intel do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.8.2/dpinctl_0.8.2_darwin_amd64.tar.gz"
      sha256 "0c9653c16156694cbd42b0181010bd7c4234579b28a1c625513e7c0d9355c6c1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.8.2/dpinctl_0.8.2_linux_arm64.tar.gz"
      sha256 "72b4e45b03ee5de4acc28cbc56f9d783409904d1ccfd527b86459a95270f27f1"
    end

    on_intel do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.8.2/dpinctl_0.8.2_linux_amd64.tar.gz"
      sha256 "61c48fe46bcde8946d071683837b1218387da6914c842cb8503e909a86e6745a"
    end
  end

  def install
    bin.install "dpinctl"
    generate_completions_from_executable(bin/"dpinctl", "completion")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dpinctl version")
  end
end
