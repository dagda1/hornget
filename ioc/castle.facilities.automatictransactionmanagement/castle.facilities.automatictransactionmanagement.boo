install castle.automatictransactionmanagement:
    get_from svn("http://svn.castleproject.org:8080/svn/castle/Facilities/AutomaticTransactionManagement/trunk/")
    build_with nant, buildfile("default.build"), FrameworkVersion35

    switches:
        parameters "sign=true","common.testrunner.enabled=false", "common.silverlight=false"

    shared_library "lib"
    build_root_dir "build"

dependencies:
    dependency "castle.core" >> "Castle.Core"
    dependency "castle.dynamicproxy" >> "Castle.DynamicProxy2"
    dependency "castle.services.transaction" >> "Castle.Services.Transaction"
    dependency "castle.windsor" >> "Castle.MicroKernel"
    dependency "castle.windsor" >> "Castle.Windsor"

exclude:
    library "Rhino.Mocks"
    library "nunit.framework"
    
package.category = "IoC"
package.description = "The Automatic Transaction Management Facility performs declarative transaction management for your classes using interceptors."
package.forum = "http://groups.google.co.uk/group/castle-project-users?hl=en"
package.homepage = "http://www.castleproject.org/container/facilities/trunk/atm/index.html"
package.name = "Castle Facilities Automatic Transaction Management"
package.notes = ""
