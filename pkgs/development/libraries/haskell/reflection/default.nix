# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, tagged }:

cabal.mkDerivation (self: {
  pname = "reflection";
  version = "1.5.1";
  sha256 = "18ail6j7rs5jff9zxphxd7vjkwanpv12dhi98s86r65425fdhjlx";
  buildDepends = [ tagged ];
  meta = {
    homepage = "http://github.com/ekmett/reflection";
    description = "Reifies arbitrary terms into types that can be reflected back into terms";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
