install castle.services.transaction:
    get_from svn("http://svn.castleproject.org:8080/svn/castle/Services/Transaction/trunk/")
    build_with nant, buildfile("default.build"), FrameworkVersion35

    switches:
        parameters "sign=true","common.testrunner.enabled=false", "common.silverlight=false"

    shared_library "lib"
    build_root_dir "build"

dependencies:
    dependency "castle.core" >> "Castle.Core"

package.category = "IoC"
package.description = "Castle.Service.Transaction was inspired by the Java Transaction API (JTA), although it is a simplified version with no support for two phase commit."
package.forum = "http://groups.google.co.uk/group/castle-project-users?hl=en"
package.homepage = "http://www.castleproject.org/services/transaction/index.html/"
package.name = "Castle Services Logging"
package.notes = ""