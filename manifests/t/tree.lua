return pkg {
  name     = "tree",
  version  = "2.2.1",
  desc     = "Display directories as trees (with optional color/HTML output)",
  homepage = "https://oldmanprogrammer.net/source.php?dir=projects/tree",
  url      = "https://github.com/Old-Man-Programmer/tree/archive/refs/tags/2.2.1.tar.gz",
  hash     = "3f6044615ad1e423e7a27db71f338b2e7a217e302bf3313710130762b56ad3f7",
  license  = "GPL-2.0 or later",
  build    = function(b)
    assert(b.env.append("CFLAGS", "-fomit-frame-pointer"))

    local objs = "tree.o list.o hash.o color.o file.o filter.o info.o unix.o xml.o json.o html.o strverscmp.o"

    assert(b.run("make",
      "PREFIX=" .. b.prefix,
      "MANDIR=" .. b.prefix .. "/share/man",
      "CFLAGS=" .. assert(b.env.get("CFLAGS")),
      "OBJS=" .. objs,
      "install"
    ))
  end
}
