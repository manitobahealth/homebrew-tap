class Dpinctl < Formula
  desc "Command line for DPIN Connect"
  homepage "https://github.com/manitobahealth/homebrew-tap"
  version "0.6.1"

  on_macos do
    on_arm do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.6.1/dpinctl_0.6.1_darwin_arm64.tar.gz"
      sha256 "b7aa1b7ace26193c65e34112b25057ab73b9e928413ce77517dc895e511ac476"
    end

    on_intel do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.6.1/dpinctl_0.6.1_darwin_amd64.tar.gz"
      sha256 "4bea569efb475b5f6a08080114a528005eaf8cd5b649438dcb8898315a71621c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.6.1/dpinctl_0.6.1_linux_arm64.tar.gz"
      sha256 "cad9cdc356abbd4a879d0cee2660faf72d115c9af21d8746dcbed350fc9bf7fd"
    end

    on_intel do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.6.1/dpinctl_0.6.1_linux_amd64.tar.gz"
      sha256 "4ce03d0b63b5867e2ffe764f4f93a51b74ac656c921d893251f31f2dd6d3fc4b"
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
