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
	depend "castle.windsor"   	>> "Castle.Core"    
	depend "castle.windsor"   	>> "Castle.DynamicProxy2"    
	depend "castle.windsor"   	>> "Castle.MicroKernel"    
	depend "castle.windsor"   	>> "Castle.Windsor"	
	depend "castle.windsor"   	>> "Castle.Mikrokernel"	
	depend "castle.monorail"   	>> "Castle.MonoRail.Framework"    
	depend "linfu"    		>> "LinFu.DynamicProxy" 

package.category = "IoC"
package.description = "Ninject: Lightning-fast dependency injection for .NET"
package.forum = "http://groups.google.com/group/ninject"
package.homepage = "http://ninject.org/"
package.name = "Ninject"
package.notes = ""