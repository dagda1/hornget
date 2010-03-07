install rhino.dsl:
    get_from git("git://github.com/ayende/rhino-dsl.git")
    build_with psake, buildfile("default.ps1"), FrameworkVersion35    
	with:
		tasks Compile    

build_root_dir "build"
shared_library "SharedLibs"

package.category = "Frameworks"
package.description = "DSL Library for Boo"
package.forum = "http://groups.google.co.uk/group/rhino-tools-dev?hl=en"
package.homepage = "http://ayende.com/blog/"
package.name = "Rhino.Dsl"
package.notes = ""