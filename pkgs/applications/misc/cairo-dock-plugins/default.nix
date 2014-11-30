{ fetchgit, stdenv, gnumake, pkgconfig, libtool, autoconf, automake
, curl, ncurses, cmake, zlib, glib, alsaLib, dbus, dbus_glib, gtk3, upower, libical, python, ruby, vala, gnome3, libxklavier, libexif, atk, libpthreadstubs, mesa_glu, gettext, libxml2, librsvg, libXdmcp, libxshmfence, libXtst, intltool, cairo-dock-core, lm_sensors }:

stdenv.mkDerivation rec {
  version = "3.4";
  name = "cairo-dock-plug-ins-${version}";

  src = fetchgit {
    url = "https://github.com/Cairo-Dock/cairo-dock-plug-ins.git";
    rev = "7747ccd1e0ef265583841bbf3e75196237a26094";
    sha256  = "1wqn6lnsmdwb38v95zigvlyaw0xwdf9qq3w4cw0np42pz8lhv0c8";
  };

  buildInputs = with gnome3; [
    autoconf automake gnumake pkgconfig libtool curl ncurses cmake zlib glib alsaLib dbus dbus_glib gtk3 upower libical python ruby vala libxklavier libexif atk libpthreadstubs mesa_glu gettext libxml2 librsvg libXdmcp libxshmfence libXtst intltool cairo-dock-core lm_sensors
 ];
  NIX_LDFLAGS = "-lpthread";

  meta = with stdenv.lib; {
    description = "Cairo-Dock plug-ins";
    longDescription= "Cairo-Dock is a desktop interface that takes the shape of docks, desklets, panel, etc";
    homepage = "http://glx-dock.org";
    license = licenses.gpl2;
    maintainers = [ maintainers.offline ];
    platforms = stdenv.lib.platforms.linux;
    hydraPlatforms = [];
  };
}
