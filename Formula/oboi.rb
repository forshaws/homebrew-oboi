class Oboi < Formula
  desc "OBoi — description of your tool"
  homepage "https://github.com/forshaws/homebrew-oboi"
  version "0.1.0"  # change if you use a different tag

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/forshaws/homebrew-oboi/releases/download/v0.1.0/oboi-darwin-arm64.tar.gz"
      sha256 "3a05d467e8e7a540e994f17a8070ebf7594566fcd1e27e851d3251673459697b"
    else
      url "https://github.com/forshaws/homebrew-oboi/releases/download/v0.1.0/oboi-darwin-amd64.tar.gz"
      sha256 "583da0089d1e3882ba9a7c70e67793f0aff61d2dd005ce0d4457a6f30f53a1b4"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/forshaws/homebrew-oboi/releases/download/v0.1.0/oboi-linux-amd64.tar.gz"
      sha256 "443cd20a1dae9552dcec115d67cecd1c236f9f13eba512d8fc61d1a59854809b"
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
