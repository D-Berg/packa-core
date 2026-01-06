return pkg {
  name     = "M4",
  version  = "1.4.20",
  desc     = "Macro processing language",
  homepage = "https://www.gnu.org/software/m4/",
  url      = "https://ftpmirror.gnu.org/gnu/m4/m4-1.4.20.tar.xz",
  hash     = "4f4b8c7c8e13b6b1cd05c2b97f6275eb445f39d0ef2afc206933b9fc78ad78da",
  license  = "GPL-3.0-or-later",
  build    = function(b)
    assert(b.run("./configure", "--disable-dependency-tracking", "--prefix=" .. b.prefix))
    assert(b.run("make"))
    assert(b.run("make", "install"))
  end
}
