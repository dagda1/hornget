install castle.core:
    get_from git("git://github.com/castleproject/Castle.Components.Scheduler.git", "1-1-stable")
    build_with nant, buildfile("default.build"), FrameworkVersion35

    switches:
        parameters "sign=true","common.testrunner.enabled=false", "common.silverlight=false"

    shared_library "lib"
    build_root_dir "build"

    mode debug:
        switches:
            parameters "project.config=debug", "sign=true","common.testrunner.enabled=false", "common.silverlight=false"

    mode release:
         switches:
            parameters "project.config=release", "sign=true","common.testrunner.enabled=false", "common.silverlight=false"
                        
    mode aptca:
         switches:
            parameters "project.config=aptca", "sign=true","common.testrunner.enabled=false", "common.silverlight=false"

dependencies:
    dependency "castle.core"             				>> "1.2" >> "Castle.Core"
    dependency "castle.windsor"                         >> "2.1" >> "Castle.Windsor"
    dependency "castle.windsor"                         >> "2.1" >> "Castle.MicroKernel"
    dependency "castle.windsor"                         >> "2.2" >> "Castle.DynamicProxy2"

exclude:
    library "Rhino.Mocks"
    library "nunit.framework"
    
package.category = "IoC"
package.description = "The Castle.Components.Scheduler project offers a lightweight and reusable general-purpose scheduling service that integrates well with most .Net applications."
package.forum = "http://groups.google.com/group/castle-project-users"
package.homepage = "http://using.castleproject.org/display/Contrib/Castle.Components.Scheduler/"
package.name = "Castle Components Scheduler"
package.notes = ""