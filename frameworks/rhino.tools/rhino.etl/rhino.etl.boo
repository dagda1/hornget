install rhino.etl:
    get_from git("git://github.com/ayende/rhino-etl.git")
    build_with psake, buildfile("psake.ps1"), FrameworkVersion35

    build_root_dir "build"
    shared_library "SharedLibs"

dependencies:
    depend "rhino.dsl" >> "rhino.dsl"

package.category = "Frameworks"
package.description = "Developer friendly ETL Library for .NET"
package.forum = "http://groups.google.co.uk/group/rhino-tools-dev?hl=en"
package.homepage = "http://ayende.com/blog/"
package.name = "Rhino.Etl"
package.notes = ""