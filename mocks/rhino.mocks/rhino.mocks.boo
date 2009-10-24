install rhino.mocks:
    get_from git("git://github.com/ayende/rhino-mocks.git")
    build_with psake, buildfile("psake.ps1"), FrameworkVersion35

    with:
        tasks full

    build_root_dir "build"
    shared_library "Lib"

package.category = "Mocks"
package.description = "Dynamic Mocking Framework for .NET."
package.forum = "http://groups.google.co.uk/group/rhino-tools-dev?hl=en"
package.homepage = "http://ayende.com/blog/"
package.name = "Rhino.Mocks"
package.notes = ""