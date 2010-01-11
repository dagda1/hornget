install castle.components.scheduler:
    get_from svn("http://svn.castleproject.org:8080/svn/castle/Components/Scheduler/trunk/")
    build_with nant, buildfile("default.build"), FrameworkVersion35

    switches:
        parameters "sign=true","common.testrunner.enabled=false", "common.silverlight=false"

    shared_library "lib"
    build_root_dir "build"

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