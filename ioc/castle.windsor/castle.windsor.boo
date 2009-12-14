install castle.windsor:
    get_from svn("http://svn.castleproject.org:8080/svn/castle/InversionOfControl/trunk/")
    build_with nant, buildfile("default.build"), FrameworkVersion35

    switches:
        parameters "sign=true","common.testrunner.enabled=false", "common.silverlight=false"

    shared_library "lib"
    build_root_dir "build"
    
dependencies:
    dependency "castle.dynamicproxy" >> "Castle.DynamicProxy2"
    dependency "castle.dynamicproxy" >> "Castle.Core"

package.category = "IoC"
package.description = "Windsor is an inversion of control container that aggregates the MicroKernel offering a friendly fool-proof interface and options to external configurations."
package.forum = "http://groups.google.co.uk/group/castle-project-users?hl=en"
package.homepage = "http://www.castleproject.org/"
package.name = "Castle Windsor"
package.notes = ""