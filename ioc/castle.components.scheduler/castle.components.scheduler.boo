install castle.core:
    get_from git("git://github.com/castleproject/Castle.Components.Scheduler.git")
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
    dependency "castle.core"             				>> "Castle.Core"
    dependency "castle.windsor"                         >> "Castle.Windsor"
    dependency "castle.windsor"                         >> "Castle.MicroKernel"
    dependency "castle.windsor"                         >> "Castle.DynamicProxy2"

exclude:
    library "Rhino.Mocks"
    library "nunit.framework"
    
package.category = "IoC"
package.description = "The Castle.Components.Scheduler project offers a lightweight and reusable general-purpose scheduling service that integrates well with most .Net applications."
package.forum = "http://groups.google.com/group/castle-project-users"
package.homepage = "http://using.castleproject.org/display/Contrib/Castle.Components.Scheduler/"
package.name = "Castle Components Scheduler"
package.notes = ""