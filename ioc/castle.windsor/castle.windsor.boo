install castle.windsor:
    get_from git("git://github.com/castleproject/Castle.InversionOfControl.git")
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
    dependency "castle.dynamicproxy" >> "Castle.DynamicProxy2"
    dependency "castle.core"         >> "Castle.Core"
    
package.category = "IoC"
package.description = "Windsor is an inversion of control container that aggregates the MicroKernel offering a friendly fool-proof interface and options to external configurations."
package.forum = "http://groups.google.co.uk/group/castle-project-users?hl=en"
package.homepage = "http://www.castleproject.org/container/"
package.name = "Castle Windsor"
package.notes = ""