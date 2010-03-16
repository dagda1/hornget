install rhino.etl:
    get_from git("git://github.com/ayende/rhino-etl.git")
    build_with psake, buildfile("default.ps1"), FrameworkVersion35    
	with:
		tasks Compile    

build_root_dir "build"
shared_library "SharedLibs"

dependencies:
    dependency "rhino.dsl"   >> "rhino.dsl"
    dependency "rhino.dsl"   >> "Boo.Lang"
    dependency "rhino.dsl"   >> "Boo.Lang.CodeDom"
    dependency "rhino.dsl"   >> "Boo.Lang.Compiler"
    dependency "rhino.dsl"   >> "Boo.Lang.Extensions"
    dependency "rhino.dsl"   >> "Boo.Lang.Interpreter"
    dependency "rhino.dsl"   >> "Boo.Lang.Parser"
    dependency "rhino.dsl"   >> "Boo.Lang.PatternMatching"
    dependency "rhino.dsl"   >> "Boo.Lang.Useful"

package.category = "Frameworks"
package.description = "Developer friendly ETL Library for .NET"
package.forum = "http://groups.google.co.uk/group/rhino-tools-dev?hl=en"
package.homepage = "http://ayende.com/blog/"
package.name = "Rhino.Etl"
package.notes = ""