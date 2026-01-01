local pkg = {} ---@cast pkg Package
pkg.name = "hello"
pkg.version = "2.12"
pkg.url = "https://ftp.gnu.org/gnu/hello/hello-" .. pkg.version .. ".tar.gz"
pkg.hash = "ce20127416c48b9e6a7025ea9e7ced637802b6c96262aa59e6ebb7e673a00374"
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
