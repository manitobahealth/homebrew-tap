class Dpinctl < Formula
  desc "Command line for DPIN Connect"
  homepage "https://github.com/manitobahealth/homebrew-tap"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.1.0/dpinctl_0.1.0_darwin_arm64.tar.gz"
      sha256 "1a96e4facf1c17a124b87127051d4bc486344992ca376e8ec004e1b7b0e925e5"
    end

    on_intel do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.1.0/dpinctl_0.1.0_darwin_amd64.tar.gz"
      sha256 "22dd2e21323d47d66a24d56625f81ec9cb890f34f133b71c1849446634a13d73"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.1.0/dpinctl_0.1.0_linux_arm64.tar.gz"
      sha256 "346a7233561dcb301c9808a69dc7ddeef353b2741ab4ff4b175d427b0e8cebc3"
    end

    on_intel do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.1.0/dpinctl_0.1.0_linux_amd64.tar.gz"
      sha256 "a9bf53855e5cf465c05a7ea551455a2fda25c514946f3bd8b91bf023c869a3e8"
    end
  end

  def install
    bin.install "dpinctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dpinctl version")
  end
end
