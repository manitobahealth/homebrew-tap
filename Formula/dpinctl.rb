class Dpinctl < Formula
  desc "Command line for DPIN Connect"
  homepage "https://github.com/manitobahealth/homebrew-tap"
  version "0.8.5"

  on_macos do
    on_arm do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.8.5/dpinctl_0.8.5_darwin_arm64.tar.gz"
      sha256 "966b70943f770872ce97bfe4c084113a026014394b83d40ae84d1d3df8173d1c"
    end

    on_intel do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.8.5/dpinctl_0.8.5_darwin_amd64.tar.gz"
      sha256 "7e865320c2315029e7fe6be3210287f51d6c9aac9c701613ce76308fc5a7b301"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.8.5/dpinctl_0.8.5_linux_arm64.tar.gz"
      sha256 "3b89749dfb373c072eb99dc76ed4c57a717bcc4ce6756ef3fd48717610c61d2d"
    end

    on_intel do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.8.5/dpinctl_0.8.5_linux_amd64.tar.gz"
      sha256 "c1c9a6b2e38f042c648dd28cd1378547b8e3b2190a7c5247cd2f7c214ec1341b"
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
