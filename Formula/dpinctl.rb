class Dpinctl < Formula
  desc "Command line for DPIN Connect"
  homepage "https://github.com/manitobahealth/homebrew-tap"
  version "0.5.0"

  on_macos do
    on_arm do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.5.0/dpinctl_0.5.0_darwin_arm64.tar.gz"
      sha256 "8b2278bdabafcd89e35b1a6b5f79bd945e13158918a090e5e2cff00491ece9b7"
    end

    on_intel do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.5.0/dpinctl_0.5.0_darwin_amd64.tar.gz"
      sha256 "0b45503d81b70f1918c6fa5fc537855a15c3cff94fdb6c247cceb0468aad4e53"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.5.0/dpinctl_0.5.0_linux_arm64.tar.gz"
      sha256 "2625e05643740e3415d8144c1dffc127d0434fafb61c0caee68698ced8003ee1"
    end

    on_intel do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.5.0/dpinctl_0.5.0_linux_amd64.tar.gz"
      sha256 "494f17f7f98f4f8ba3ffa8f91b647f1b4c3ad8a7a29c4ae282973b7650f3488f"
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
