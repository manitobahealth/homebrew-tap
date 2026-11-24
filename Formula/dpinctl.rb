class Dpinctl < Formula
  desc "Command line for DPIN Connect"
  homepage "https://github.com/manitobahealth/homebrew-tap"
  version "0.8.0"

  on_macos do
    on_arm do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.8.0/dpinctl_0.8.0_darwin_arm64.tar.gz"
      sha256 "6ce054d64abe7840b62b8761539d971076c914c35fd0521dad93a897a6b13758"
    end

    on_intel do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.8.0/dpinctl_0.8.0_darwin_amd64.tar.gz"
      sha256 "06ccdb9711745c2903bbd9da0efe718200e5454387f183c65ad5530fa38306c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.8.0/dpinctl_0.8.0_linux_arm64.tar.gz"
      sha256 "a7cc0515dbd3210b0d297640078073ec247d1014b95934d7450dfc9e93721bcd"
    end

    on_intel do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.8.0/dpinctl_0.8.0_linux_amd64.tar.gz"
      sha256 "859bb22ba249c93d8cdd12a7b9f1b93834d23f9b1b7ffa950b18d877b1ebf9e3"
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
