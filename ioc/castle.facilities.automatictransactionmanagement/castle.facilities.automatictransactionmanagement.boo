install castle.dynamicproxy:
    get_from git("git://github.com/castleproject/Castle.Facilities.AutomaticTransactionManagement.git")
    build_with msbuild, buildfile("buildscripts/Build.proj"), FrameworkVersion35

    switches:
        parameters "/p:TestRunner_Enabled=false"

    shared_library "lib"
    build_root_dir "build"

    mode debug:
        switches:
            parameters "/p:Configuration=Debug", "/p:TestRunner_Enabled=false"

    mode release:
         switches:
            parameters "/p:Configuration=Release", "/p:TestRunner_Enabled=false"
                        
    mode aptca:
         switches:
            parameters "/p:Configuration=Release", "/p:TestRunner_Enabled=false", "/p:AllowPartiallyTrustedCallers=True"

dependencies:
    dependency "castle.core"             		>> "Castle.Core"
    dependency "castle.dynamicproxy" 			>> "Castle.DynamicProxy2"
    dependency "castle.services.transaction" 	>> "Castle.Services.Transaction"
    dependency "castle.windsor" 				>> "Castle.MicroKernel"
    dependency "castle.windsor" 				>> "Castle.Windsor"

exclude:
    library "Rhino.Mocks"
    library "nunit.framework"
    
package.category = "IoC"
package.description = "The Automatic Transaction Management Facility performs declarative transaction management for your classes using interceptors."
package.forum = "http://groups.google.co.uk/group/castle-project-users?hl=en"
package.homepage = "http://www.castleproject.org/container/facilities/trunk/atm/index.html"
package.name = "Castle Facilities Automatic Transaction Management"
package.notes = ""
