class Liboparl < Formula
    desc "A library to access OParl civic information endpoints"
    homepage "https://github.com/OParl/liboparl"
    url "https://github.com/OParl/liboparl/archive/v0.2.1.tar.gz"
    version "0.2.1"
    sha256 "f02d4ec209f0f4f5d2c6ab5d456461eb37a0f8d31352d4964a37dd2359418477"

    head "https://github.com/OParl/liboparl.git"

    depends_on "glib"
    depends_on "json-glib"

    depends_on "meson" => :build
    depends_on "vala" => :build
    depends_on "ninja" => :build

    def install
        system.mkdir("build")
        system.cd("build")

        mkdir "build" do
            system "meson", "-Dbuild_valadoc=false", "-Dprefix=#{prefix}", ".."
            system "ninja", "install"
        end
    end
end
