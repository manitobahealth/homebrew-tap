class Dpinctl < Formula
  desc "Command line for DPIN Connect"
  homepage "https://github.com/manitobahealth/homebrew-tap"
  version "0.8.1"

  on_macos do
    on_arm do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.8.1/dpinctl_0.8.1_darwin_arm64.tar.gz"
      sha256 "df8777d273fb615ad74eacc82f9704aad2da9979b0dc1779e973bc76df9150c6"
    end

    on_intel do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.8.1/dpinctl_0.8.1_darwin_amd64.tar.gz"
      sha256 "397b02263d48fcaa21743564405c897986b3c569cb1959603499506e2ced536c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.8.1/dpinctl_0.8.1_linux_arm64.tar.gz"
      sha256 "091038944ddaabddbaf6a5f6a069db725be10fd9d0e210e0c64218b5323c73ad"
    end

    on_intel do
      url "https://github.com/manitobahealth/homebrew-tap/releases/download/v0.8.1/dpinctl_0.8.1_linux_amd64.tar.gz"
      sha256 "86323712f819b87f1c89734823c181020368d2e3569c907cce5e2ab7dc5909be"
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
