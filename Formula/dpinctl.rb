class Dpinctl < Formula
  desc "Command line for DPIN Connect"
  homepage "https://github.com/manitobahealth/homebrew-tap"
  version "0.7.0"

  on_macos do
    on_arm do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.7.0/dpinctl_0.7.0_darwin_arm64.tar.gz"
      sha256 "138b5bef41cc03029e3e17a1ac50a2012e273dfd415a5f37e643fc2e3afcd489"
    end

    on_intel do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.7.0/dpinctl_0.7.0_darwin_amd64.tar.gz"
      sha256 "02f78a4317042155211154b23fcc751ac8c9d0a754185b6da892b4ffacb8cb90"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.7.0/dpinctl_0.7.0_linux_arm64.tar.gz"
      sha256 "fbfb5a464f57e3bf48c443fa866fee688249128cfa5c9f7be08f518377661f9b"
    end

    on_intel do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.7.0/dpinctl_0.7.0_linux_amd64.tar.gz"
      sha256 "c2f55c70125336113692db25478a5d52ab9600639d490b3aad3fc53fe18061d6"
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
