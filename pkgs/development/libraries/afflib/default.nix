{ stdenv, fetchgit, zlib, curl, expat, fuse, openssl
, autoconf, automake, libtool, python
}:

stdenv.mkDerivation rec {
  version = "3.7.5";
  name = "afflib-${version}";

  src = fetchgit {
    url = "https://github.com/sshock/AFFLIBv3/";
    rev = "refs/tags/v${version}";
    sha256 = "06dr3y6bd7vfjf0p9v85yp1xzg43x515zsa9587jcx7yy5h5ams5";
    name = "afflib-${version}-checkout";
  };

  buildInputs = [ zlib curl expat fuse openssl 
    libtool autoconf automake python
    ];

  preConfigure = ''
    libtoolize -f
    autoheader -f
    aclocal
    automake --add-missing -c 
    autoconf -f
  '';

  meta = {
    homepage = http://afflib.sourceforge.net/;
    description = "Advanced forensic format library";
    platforms = stdenv.lib.platforms.linux;
    license = stdenv.lib.licenses.bsdOriginal;
    maintainers = [ stdenv.lib.maintainers.raskin ];
    inherit version;
    downloadPage = "http://digitalcorpora.org/downloads/afflib/";
    updateWalker = true;
  };
}
