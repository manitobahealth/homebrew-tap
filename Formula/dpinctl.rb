class Dpinctl < Formula
  desc "Command line for DPIN Connect"
  homepage "https://github.com/manitobahealth/homebrew-tap"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.3.0/dpinctl_0.3.0_darwin_arm64.tar.gz"
      sha256 "d0b343dd3e1a11d020512835c7448af66b148c69bced73e4706c431485c46b09"
    end

    on_intel do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.3.0/dpinctl_0.3.0_darwin_amd64.tar.gz"
      sha256 "dc162f021c66fd2a49c8c435187b560f144c1b1b0831c59600fafb767ea7374b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.3.0/dpinctl_0.3.0_linux_arm64.tar.gz"
      sha256 "fa8e90a955fc06a362b93ff269c8b175f6bc0ff59733eff0eac91c02e9b42f72"
    end

    on_intel do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.3.0/dpinctl_0.3.0_linux_amd64.tar.gz"
      sha256 "0d56a04d7f039f08fed4e17e7fb09a9b89191cecbfde227b47f49df1bb902606"
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
