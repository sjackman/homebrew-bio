class Gfaviz < Formula
  desc "GfaViz: a graphical interactive tool for the visualization of sequence graphs in the GFA1 and GFA2 formats"
  homepage "https://github.com/ggonnella/gfaviz"
  head "https://github.com/ggonnella/gfaviz.git"

  depends_on :macos => :sierra
  depends_on "qt"

  def install
    system "qmake", "-config", "release", "PREFIX=#{prefix}"
    system "make", "install"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/gfaviz --help")
  end
end
