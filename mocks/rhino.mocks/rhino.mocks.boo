install rhino.mocks:
    get_from git("git://github.com/ayende/rhino-mocks.git")
    build_with psake, buildfile("psake.ps1"), FrameworkVersion35

    with:
        tasks full

    build_root_dir "build"
    shared_library "Lib"

package.category = "Mocks"
package.description = "The simplest mocking library for .NET 3.5 and Silverlight with deep C# 3.0 integration."
package.forum = "http://groups.google.com/group/moqdisc"
package.homepage = "http://code.google.com/p/moq/"
package.name = "Moq"
package.notes = ""
