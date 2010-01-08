install structuremap:
    get_from svn("https://structuremap.svn.sourceforge.net/svnroot/structuremap/trunk/")
    build_with nant, buildfile("cruise.build"), FrameworkVersion35
		
    shared_library "bin"
    build_root_dir "build"   

	with:
		tasks all
		
package.category = "ioc"
package.description = "StructureMap is a Dependency Injection / Inversion of Control tool for .Net"
package.forum  = "http://groups.google.com/group/structuremap-users"
package.homepage = "http://structuremap.sourceforge.net/"
package.name = "StructureMap"
package.notes = ""
