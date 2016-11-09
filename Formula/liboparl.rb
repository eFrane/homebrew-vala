class Liboparl < Formula
    desc "A library to access OParl civic information endpoints"
    homepage "https://github.com/OParl/liboparl"
    url "https://github.com/OParl/liboparl.git"
    version "master"

    depends_on "glib"
    depends_on "json-glib"

    depends_on "meson" => :build
    depends_on "vala" => :build
    depends_on "ninja" => :build

    def install
        system "mkdir build"
        system "cd build && meson.py -Dbuild_valadoc=false .."
        system "cd build && mesonconf.py -Dprefix=#{prefix}"
        system "cd build && ninja install"
    end
end
