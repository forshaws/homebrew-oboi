class Oboi < Formula
  desc "OBoi — description of your tool"
  homepage "https://github.com/forshaws/homebrew-oboi"
  version "0.1.0"  # change if you use a different tag

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/forshaws/homebrew-oboi/releases/download/v0.1.0/oboi-darwin-arm64.tar.gz"
      sha256 "SHA256_FOR_DARWIN_ARM64"
    else
      url "https://github.com/forshaws/homebrew-oboi/releases/download/v0.1.0/oboi-darwin-amd64.tar.gz"
      sha256 "SHA256_FOR_DARWIN_AMD64"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/forshaws/homebrew-oboi/releases/download/v0.1.0/oboi-linux-amd64.tar.gz"
      sha256 "SHA256_FOR_LINUX_AMD64"
    else
      odie "No Linux ARM build available"
    end
  end

  def install
    bin.install "oboi"
  end

  test do
    # Adjust to an actual test your binary supports
    system "#{bin}/oboi", "--version"
  end
end
