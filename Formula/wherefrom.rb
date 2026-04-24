class Wherefrom < Formula
  desc "Read file origin from macOS metadata (kMDItemWhereFroms)"
  homepage "https://github.com/joshleaves/wherefrom"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/joshleaves/wherefrom/releases/download/v0.1.3/wherefrom-aarch64-apple-darwin"
      sha256 "8e02e2115afd72bb9b928fe4aa2e5de3e6c409a815b0cbd4d0ce3e42dc4c5b14"
    else
      url "https://github.com/joshleaves/wherefrom/releases/download/v0.1.3/wherefrom-x86_64-apple-darwin"
      sha256 "e56f46206e463bdd7b87a1eb4b9b06481079cb2f6123b8a5f230d830d4a9e49c"
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
