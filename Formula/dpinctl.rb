class Dpinctl < Formula
  desc "Command line for DPIN Connect"
  homepage "https://github.com/manitobahealth/homebrew-tap"
  version "0.6.0"

  on_macos do
    on_arm do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.6.0/dpinctl_0.6.0_darwin_arm64.tar.gz"
      sha256 "7a3a4194289a8388da2ddc2cbea4e42857f16fe0b4d0f83e19176b5ec2ea58e8"
    end

    on_intel do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.6.0/dpinctl_0.6.0_darwin_amd64.tar.gz"
      sha256 "a5ac90f325eec8eed56a62185e36327b4b2c88cfc1e30c6bc517918019880d18"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.6.0/dpinctl_0.6.0_linux_arm64.tar.gz"
      sha256 "29dc7ba6cdac2807edf64e9006b4daf74ec71656e61496dd7c111982a0871d52"
    end

    on_intel do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.6.0/dpinctl_0.6.0_linux_amd64.tar.gz"
      sha256 "bd8e466fe5208f5f20b74a153a57c8eac177342463597c37333fefbd8f87c260"
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
