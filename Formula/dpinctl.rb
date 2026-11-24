class Dpinctl < Formula
  desc "Command line for DPIN Connect"
  homepage "https://github.com/manitobahealth/homebrew-tap"
  version "0.3.1"

  on_macos do
    on_arm do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.3.1/dpinctl_0.3.1_darwin_arm64.tar.gz"
      sha256 "304e1fe90ff747e9f361b519f5b94c68e5758bb8e59b4ea7eaf08e11414855e5"
    end

    on_intel do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.3.1/dpinctl_0.3.1_darwin_amd64.tar.gz"
      sha256 "b622554d59abff073a0db81cafaae4f5ce5d36933887d2bcc6dcfdd8a3c61d72"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.3.1/dpinctl_0.3.1_linux_arm64.tar.gz"
      sha256 "5ceff6e3057d52c63291a5c086161acdf875e681864b5c6fd73d211a83cc0ef1"
    end

    on_intel do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.3.1/dpinctl_0.3.1_linux_amd64.tar.gz"
      sha256 "ad29d740b7e5c6685bb6fa98b4dabe595ef3fd708edcc2a0dc74e7d4f63b0756"
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
