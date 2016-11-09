class LibOparl < Formula
    desc ""
    homepage "https://github.com/OParl/liboparl"
    url "https://github.com/OParl/liboparl.git"

    def install
        system "./macos.build"
        system "cd build && mesonbuild.py -Dprefix=#{prefix}"
        system "cd build && ninja install"

