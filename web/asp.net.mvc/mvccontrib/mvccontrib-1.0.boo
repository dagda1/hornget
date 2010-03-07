install mvccontrib:
    get_from git("git://github.com/mvccontrib/MvcContrib.git", "mvc1")
    build_with nant, buildfile("nant.build"), FrameworkVersion35	
    with:
        tasks build
    switches:
        parameters "runtests=false"
    
    shared_library "bin"
    build_root_dir "build"

dependencies:  
	dependency "castle.core"             							>> "1.2" >> "Castle.Core"
    dependency "castle.dynamicproxy"								>> "2.2" >> "Castle.DynamicProxy"	
    dependency "castle.dynamicproxy"								>> "2.2" >> "Castle.DynamicProxy2"
	dependency "castle.components.validator"						>> "1.1" >> "Castle.Components.Validator"
    dependency "castle.facilities.automatictransactionmanagement"			 >> "Castle.Facilities.AutomaticTransactionManagement"
    dependency "castle.services.transaction"								 >> "Castle.Services.Transaction"
    dependency "castle.windsor"												 >> "2.1" >> "Castle.MicroKernel"
    dependency "castle.windsor"												 >> "2.1" >> "Castle.Windsor"

package.category = "Web"
package.description = "This project adds additional functionality on top of the ASP.NET MVC Framework."
package.forum = "http://groups.google.co.uk/group/mvccontrib-discuss"
package.homepage = "http://www.codeplex.com/MVCContrib.org"
package.name = "MVCContrib"
package.notes = ""
