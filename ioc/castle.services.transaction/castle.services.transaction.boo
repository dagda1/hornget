install castle.services:
    get_from svn("http://svn.castleproject.org:8080/svn/castle/Services/Transaction/trunk/")
    build_with nant, buildfile("src/Transaction.build"), FrameworkVersion35

    switches:
        parameters "sign=true","common.testrunner.enabled=false", "common.silverlight=false"

    shared_library "lib"
    build_root_dir "build"

dependencies:
    dependency "castle.core" >> "1.1" >> "Castle.Core"

package.category = "IoC"
package.description = "Castle provides a number of services."
package.forum = "http://groups.google.co.uk/group/castle-project-users?hl=en"
package.homepage = "http://www.castleproject.org/"
package.name = "Castle Services"
package.notes = ""