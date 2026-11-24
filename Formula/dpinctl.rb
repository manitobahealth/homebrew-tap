class Dpinctl < Formula
  desc "Command line for DPIN Connect"
  homepage "https://github.com/manitobahealth/homebrew-tap"
  version "0.8.4"

  on_macos do
    on_arm do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.8.4/dpinctl_0.8.4_darwin_arm64.tar.gz"
      sha256 "f45ee5d84ef936d2e68919ebf11cf53cadd79fe1561c06b1481fa995ccd7e5e3"
    end

    on_intel do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.8.4/dpinctl_0.8.4_darwin_amd64.tar.gz"
      sha256 "7e675bfe65b2ba0dcc4ed4a1076f0df2cb0dacd164707819a9bb2a91e0609f96"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.8.4/dpinctl_0.8.4_linux_arm64.tar.gz"
      sha256 "df5ac14df087f7b5e86572a8976134a4d331d232c4ed5b4fee55a9e541d654e4"
    end

    on_intel do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.8.4/dpinctl_0.8.4_linux_amd64.tar.gz"
      sha256 "96bd2d2953410702d00dac740f8b02fe22d026bc645b425f85eaab361e019c65"
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
