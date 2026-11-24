class Dpinctl < Formula
  desc "Command line for DPIN Connect"
  homepage "https://github.com/manitobahealth/homebrew-tap"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.2.0/dpinctl_0.2.0_darwin_arm64.tar.gz"
      sha256 "b3afb278bb857fe5379f8ed37b53cb4c49e9da74c4c6af2da578d89394bbf40b"
    end

    on_intel do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.2.0/dpinctl_0.2.0_darwin_amd64.tar.gz"
      sha256 "0cd1b8147d0fee97ffa424bb923050656dad882e6e1796342a558780d2ce746c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.2.0/dpinctl_0.2.0_linux_arm64.tar.gz"
      sha256 "de9ea3e9a6f2370d02722c4999c552cc4e4b3867d9cd558c48fdd7caa6d169c7"
    end

    on_intel do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.2.0/dpinctl_0.2.0_linux_amd64.tar.gz"
      sha256 "1c5fbc25a4264880828dcb86d42cea126377a5dcd48ca03bd6f16805796438c3"
    end
  end

  def install
    bin.install "dpinctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dpinctl version")
  end
end
