local pkg = {} ---@cast pkg Package
pkg.name = "hello"
pkg.version = "2.12"
pkg.url = "https://ftp.gnu.org/gnu/hello/hello-" .. pkg.version .. ".tar.gz"
pkg.hash = "cf04af86dc085268c5f4470fbae49b18afbc221b78096aab842d934a76bad0ab"
pkg.license = "GNU GPLv3 or later"
pkg.build = function(b)
    if b.os == "macos" then
        assert(b.env:set("LDFLAGS", "-liconv"))
    end

    assert(b:run("./configure",
        "--disable-dependency-tracking",
        "--disable-silent-rules",
        "--prefix=" .. b.prefix
    ))

    assert(b:run("make", "install"))
end
return pkg
