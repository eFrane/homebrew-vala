class Valadoc < Formula
  desc "Documentation generator for Vala."
  homepage "https://wiki.gnome.org/Projects/Valadoc"
  head "git://git.gnome.org/valadoc"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "vala"
  depends_on "libgee"
  depends_on "graphviz"
  depends_on "glib"
  depends_on "gettext"

  def install
    system "./autogen.sh", "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "#{bin}/valadoc", "--version"
  end
end
