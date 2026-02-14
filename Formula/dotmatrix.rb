class Dotmatrix < Formula
  desc "Convert images and videos to Unicode braille art in the terminal"
  homepage "https://github.com/kevin-cantwell/dotmatrix"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kevin-cantwell/dotmatrix/releases/download/v#{version}/dotmatrix-darwin-arm64.tar.gz"
      sha256 "9916001ffb87306c2d272d59f67ca12dc97c8cb9a4d01d99e849c0f489ce08dc"
    end
    on_intel do
      url "https://github.com/kevin-cantwell/dotmatrix/releases/download/v#{version}/dotmatrix-darwin-amd64.tar.gz"
      sha256 "6465e8fee68c2547b69fbbc175e917fe55e086bf500ed50901ef7e70a28ec13b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kevin-cantwell/dotmatrix/releases/download/v#{version}/dotmatrix-linux-amd64.tar.gz"
      sha256 "07afa94bd589291c70e5e65fe8aa2ab766eece0b7d618b61fc5a848f8d7afe34"
    end
  end

  def install
    bin.install "dotmatrix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dotmatrix --version")
  end
end
