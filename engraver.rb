require 'formula'

class Engraver < Formula
  desc "Burstcoin Reference Plotter"
  homepage "https://burst-coin.org"
  url "https://github.com/PoC-Consortium/engraver/archive/2.4.0.zip"
  sha256 "b355f3e4321f0abc084d10830202e04ae4868be659bbef646d712e3e6c121dbd"

  depends_on "rust" => :build
  def install
    system "cargo", "build", "--release"
    bin.install Dir["target/release/engraver"]
  end
  test do
    system "engraver"
  end
end
