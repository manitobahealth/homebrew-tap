class Dpinctl < Formula
  desc "Command line for DPIN Connect"
  homepage "https://github.com/manitobahealth/homebrew-tap"
  version "0.8.3"

  on_macos do
    on_arm do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.8.3/dpinctl_0.8.3_darwin_arm64.tar.gz"
      sha256 "f9010f4ea5416addec044d0bf06559809b9c6ad52024f8e0a59993461f92e596"
    end

    on_intel do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.8.3/dpinctl_0.8.3_darwin_amd64.tar.gz"
      sha256 "cbc78e64607dae9c0cf6f9eeba1edfaf758f690bd9b8d299a3913f1af58c00eb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.8.3/dpinctl_0.8.3_linux_arm64.tar.gz"
      sha256 "2df028f363c0c6de7977a802943f112dcf70fb852a5bd84b29955a02fdc17f39"
    end

    on_intel do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.8.3/dpinctl_0.8.3_linux_amd64.tar.gz"
      sha256 "2661a7bd97749ed3c6e1555a829453de368fc45730e94a10267b0b7a0258e24f"
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
