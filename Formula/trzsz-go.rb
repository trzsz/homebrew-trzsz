class TrzszGo < Formula
  desc "Simple file transfer tools, similar to lrzsz (rz/sz), and compatible with tmux"
  homepage "https://trzsz.github.io"
  url "https://github.com/trzsz/trzsz-go/archive/refs/tags/v0.1.7.tar.gz"
  sha256 "93fb87141bb8306fbb9a465c4cfe5401dd0646bc1180caf1cd50b2503c93e454"
  license "MIT"

  depends_on "go" => :build
  depends_on "make" => :build

  def install
    system "make"
    bin.install Dir["bin/*"]
  end

  test do
    assert_match `uname`.strip, shell_output("#{bin}/trzsz uname")
    touch "tmpfile"
    assert_match "Not a directory", shell_output("#{bin}/trz tmpfile 2>&1", 254)
    rm "tmpfile"
    assert_match "No such file", shell_output("#{bin}/tsz tmpfile 2>&1", 255)
  end
end
