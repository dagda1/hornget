install castle.facilities.synchronize:
    get_from svn("http://svn.castleproject.org:8080/svn/castle/Facilities/Synchronize/trunk/")
    build_with nant, buildfile("default.build"), FrameworkVersion35

    switches:
        parameters "sign=true","common.testrunner.enabled=false", "common.silverlight=false", "build.warnaserrors=false"

    shared_library "lib"
    build_root_dir "build"

dependencies:
    dependency "castle.windsor"										>> "Castle.Core"
    dependency "castle.windsor"										>> "Castle.DynamicProxy2"
    dependency "castle.windsor"										>> "Castle.MicroKernel"
    dependency "castle.windsor"										>> "Castle.Windsor"

package.category = "IoC"
package.description = "Syncronize facility."
package.forum = "http://groups.google.co.uk/group/castle-project-users?hl=en"
package.homepage = "http://www.castleproject.org/container/facilities/trunk/index.html"
package.name = "Castle Facilities Synchronize"
package.notes = ""
