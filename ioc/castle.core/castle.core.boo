install castle.core:
    get_from svn("http://svn.castleproject.org:8080/svn/castle/Core/trunk/")
    build_with nant, buildfile("default.build"), FrameworkVersion35

    switches:
        parameters "sign=true","common.testrunner.enabled=false", "common.silverlight=false"

    shared_library "lib"
    build_root_dir "build"

package.category = "IoC"
package.description = "Windsor is an inversion of control container that aggregates the MicroKernel offering a friendly fool-proof interface and options to external configurations."
package.forum = "http://groups.google.com/group/castle-project-users"
package.homepage = "http://www.castleproject.org/"
package.name = "Castle.Core"
package.notes = ""