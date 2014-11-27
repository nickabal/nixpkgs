{ fetchgit, stdenv, gnumake, pkgconfig, libtool, autoconf, automake
, curl, ncurses, cmake, zlib, glib, alsaLib, dbus, dbus_glib, gtk3, atk, libpthreadstubs, mesa_glu, gettext, libxml2, librsvg, libXdmcp, libxshmfence, libXtst, intltool }:

stdenv.mkDerivation rec {
  version = "3.4";
  name = "cairo-dock-core-${version}";

  src = fetchgit {
    url = "https://github.com/Cairo-Dock/cairo-dock-core.git";
    rev = "17edf3fe3fe263b5444daa918ea78fb4257f6631";
    sha256  = "1c7rqp7xxfhgp97bzbdjgfs4ysz3aw8ijwsdk11qdcr6ayh93xsc";
  };

  buildInputs = [
    autoconf automake gnumake pkgconfig libtool curl ncurses cmake zlib glib alsaLib dbus dbus_glib gtk3 atk libpthreadstubs mesa_glu gettext libxml2 librsvg libXdmcp libxshmfence libXtst intltool
  ];
  NIX_LDFLAGS = "-lpthread";

  meta = with stdenv.lib; {
    description = "Cairo-Dock a desktop dock";
    longDescription= "Cairo-Dock is a desktop interface that takes the shape of docks, desklets, panel, etc";
    homepage = "http://glx-dock.org";
    license = licenses.gpl2;
    maintainers = [ maintainers.offline ];
    platforms = stdenv.lib.platforms.linux;
    hydraPlatforms = [];
  };
}
