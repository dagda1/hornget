install castle.services.logging:
    get_from svn("http://svn.castleproject.org:8080/svn/castle/Services/Logging/trunk/")
    build_with nant, buildfile("default.build"), FrameworkVersion35

    switches:
        parameters "sign=true","common.testrunner.enabled=false", "common.silverlight=false"

    shared_library "lib"
    build_root_dir "build"

dependencies:
    dependency "castle.core" >> "1.1" >> "Castle.Core"

package.category = "IoC"
package.description = "Castle provides an abstraction to the logging API of choice. The ILogger and ILoggerFactory interface, exposed by Castle.Core assembly are the main abstractions."
package.forum = "http://groups.google.co.uk/group/castle-project-users?hl=en"
package.homepage = "http://www.castleproject.org/services/logging/index.html/"
package.name = "Castle Services Logging"
package.notes = ""