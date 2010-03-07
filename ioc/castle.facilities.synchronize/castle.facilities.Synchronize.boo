install castle.facilities.synchronize:
    get_from git("git://github.com/castleproject/Castle.Facilities.Synchronize.git")
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
    dependency "castle.core"             		>> "1.2" >> "Castle.Core"
    dependency "castle.dynamicproxy"			>> "2.2" >> "Castle.DynamicProxy2"
    dependency "castle.windsor"					>> "2.1" >> "Castle.MicroKernel"
    dependency "castle.windsor"					>> "2.1" >> "Castle.Windsor"

exclude:
    library "Rhino.Mocks"
    library "nunit.framework"
    
package.category = "IoC"
package.description = "Syncronize facility."
package.forum = "http://groups.google.co.uk/group/castle-project-users?hl=en"
package.homepage = "http://www.castleproject.org/container/facilities/trunk/index.html"
package.name = "Castle Facilities Synchronize"
package.notes = ""
