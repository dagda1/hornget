install structuremap:
    get_from git("git://github.com/structuremap/structuremap.git")
    build_with nant, buildfile("cruise.build"), FrameworkVersion35
		
    shared_library "bin"
    build_root_dir "build"   

	with:
		tasks release
		
package.category = "ioc"
package.description = "StructureMap is a Dependency Injection / Inversion of Control tool for .Net"
package.forum  = "http://groups.google.com/group/structuremap-users"
package.homepage = "http://structuremap.sourceforge.net/"
package.name = "StructureMap"
package.notes = ""
