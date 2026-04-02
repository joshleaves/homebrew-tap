class Wherefrom < Formula
  desc "Read file origin from macOS metadata (kMDItemWhereFroms)"
  homepage "https://github.com/joshleaves/wherefrom"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/joshleaves/wherefrom/releases/download/v0.1.1/wherefrom-aarch64-apple-darwin"
      sha256 "0016a6526b1135fb73cbbb66e68b2d1f493172ddfb698450daade38f63ba5a51"
    else
      url "https://github.com/joshleaves/wherefrom/releases/download/v0.1.1/wherefrom-x86_64-apple-darwin"
      sha256 "237a107e37b093c539fe893f5fb34764a6a41ff1c555091755c7c5bd1fb4abf9"
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
