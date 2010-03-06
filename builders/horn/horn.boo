install horn:
    get_from git("git://github.com/dagda1/horn_src.git")
    build_with nant, buildfile("src/Horn.build"), FrameworkVersion35	

    build_root_dir "src/build"
    shared_library "lib"	

dependencies:
    depend @log4net >>  "1.2.10" >>  "log4net"	
    dependency "castle.core"             		>> "1.2" >> "Castle.Core"
    dependency "castle.dynamicproxy"			>> "2.2" >> "Castle.DynamicProxy2"
    dependency "castle.windsor"					>> "2.1" >> "Castle.MicroKernel"
    dependency "castle.windsor"					>> "2.1" >> "Castle.Windsor"

package.category = "Builders"
package.description = "A .NET build and dependency manager"
package.forum = "http://groups.google.co.uk/group/horn-development?hl=en"	
package.homepage = "http://code.google.com/p/hornget/"
package.name = "Horn"
package.notes = ""
