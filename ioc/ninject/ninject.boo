install ninject:    
	get_from git("git://github.com/enkari/ninject1.git")    
	build_with nant, buildfile("Ninject.build"), FrameworkVersion35     

	switches:        
		parameters "skip.tests=true"     

	with:        
		tasks release,clean,all     

	shared_library "lib"    
	build_root_dir "bin/net-3.5/release" 

dependencies:    
	dependency "castle.core"             		>> "1.2" >> "Castle.Core"
    dependency "castle.dynamicproxy"			>> "2.2" >> "Castle.DynamicProxy2"
    dependency "castle.windsor"					>> "2.1" >> "Castle.MicroKernel"
    dependency "castle.windsor"					>> "2.1" >> "Castle.Windsor"	
	dependency "castle.monorail"   				>> "Castle.MonoRail.Framework"    
	dependency "linfu"    						>> "LinFu.DynamicProxy" 

package.category = "IoC"
package.description = "Ninject: Lightning-fast dependency injection for .NET"
package.forum = "http://groups.google.com/group/ninject"
package.homepage = "http://ninject.org/"
package.name = "Ninject"
package.notes = ""