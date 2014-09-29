# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, cpphs, filepath, JuicyPixels, linear, OpenGL, OpenGLRaw
, transformers, vector
}:

cabal.mkDerivation (self: {
  pname = "GLUtil";
  version = "0.8.1";
  sha256 = "026w6rsgs0vmjx9fj4x3r93rifdyjygb83spcwmch31a7qng6l7w";
  buildDepends = [
    cpphs filepath JuicyPixels linear OpenGL OpenGLRaw transformers
    vector
  ];
  buildTools = [ cpphs ];
  meta = {
    description = "Miscellaneous OpenGL utilities";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})