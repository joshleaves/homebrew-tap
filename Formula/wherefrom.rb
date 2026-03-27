class Wherefrom < Formula
  desc "Read file origin from macOS metadata (kMDItemWhereFroms)"
  homepage "https://github.com/joshleaves/wherefrom"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/joshleaves/wherefrom/releases/download/v0.1.0/wherefrom-aarch64-apple-darwin"
      sha256 "f135d50ab5655532c30aa53cf646294cd610f0112c1a463c04a32c16e28c78e9"
    else
      url "https://github.com/joshleaves/wherefrom/releases/download/v0.1.0/wherefrom-x86_64-apple-darwin"
      sha256 "100720e60f08dcd7b9c0ec6da5dd0ceb434f0b0cfc8032f6f39154e86baf0d4d"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "wherefrom-aarch64-apple-darwin" => "wherefrom"
    else
      bin.install "wherefrom-x86_64-apple-darwin" => "wherefrom"
    end
  end
end
