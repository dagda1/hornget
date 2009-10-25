install rhino.dsl:
    get_from git("git://github.com/ayende/rhino-dsl.git")
    build_with psake, buildfile("psake.ps1"), FrameworkVersion35

    build_root_dir "build"
    shared_library "SharedLibs"

package.category = "Mocks"
package.description = "DSL Library for Boo"
package.forum = "http://groups.google.co.uk/group/rhino-tools-dev?hl=en"
package.homepage = "http://ayende.com/blog/"
package.name = "Rhino.Dsl"
package.notes = ""