install castle.dynamicproxy:
    get_from git("git://github.com/castleproject/Castle.DynamicProxy.git")
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
    dependency "castle.core" >> "Castle.Core"

exclude:
    library "Rhino.Mocks.CPP.Interfaces"
    library "nunit.framework"
    
package.category = "IoC"
package.description = "Castle DynamicProxy is a library for generating lightweight .NET proxies on the fly at runtime."
package.forum = "http://groups.google.com/group/castle-project-users"
package.homepage = "http://www.castleproject.org/dynamicproxy/"
package.name = "Castle.DynamicProxy"
package.notes = ""