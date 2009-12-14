install castle.facilities.cache:
    get_from svn("http://svn.castleproject.org:8080/svn/castle/Facilities/Cache/trunk/")
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
    dependency "castle.services.transaction"						>> "castle.services.transaction"
    dependency "castle.facilities.automatictransactionmanagement"	>> "Castle.Facilities.AutomaticTransactionManagement"

package.category = "IoC"
package.description = "The Batch Registration Facility registers components based on configuration instructions."
package.forum = "http://groups.google.co.uk/group/castle-project-users?hl=en"
package.homepage = "http://www.castleproject.org/container/facilities/trunk/index.html"
package.name = "Castle Facilities Cache"
package.notes = ""
