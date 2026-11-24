class Dpinctl < Formula
  desc "Command line for DPIN Connect"
  homepage "https://github.com/manitobahealth/homebrew-tap"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.4.0/dpinctl_0.4.0_darwin_arm64.tar.gz"
      sha256 "33c5064d5e6d93544c3b17c79f1de7289d65b862114aff6956bccb7006a20adf"
    end

    on_intel do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.4.0/dpinctl_0.4.0_darwin_amd64.tar.gz"
      sha256 "dc069570dd7ca5ec05487924ea498dcc3b5e8200057a9dfc8c719747188f20dc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.4.0/dpinctl_0.4.0_linux_arm64.tar.gz"
      sha256 "15e76d6863467e34dca8877b208389fe88c5f4704bbb9530d957b2d792e2e1eb"
    end

    on_intel do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.4.0/dpinctl_0.4.0_linux_amd64.tar.gz"
      sha256 "ffcc0127d2fba8dfa219e7137ad2454422620cf1dc25b0fc33d029c77c78880d"
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
