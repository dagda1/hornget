install castle.facilities.wcfintegration:
    get_from svn("http://svn.castleproject.org:8080/svn/castle/Facilities/Wcf/trunk/")
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
package.description = "Facilities augment the MicroKernel capabilities by integrating it with a different project or technology, or by implementing new semantics."
package.forum = "http://groups.google.co.uk/group/castle-project-users?hl=en"
package.homepage = "http://www.castleproject.org/container/facilities/trunk/wcf/index.html"
package.name = "Castle Facilities Wcf Integration"
package.notes = ""
