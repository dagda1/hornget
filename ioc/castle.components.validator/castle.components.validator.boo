install castle.core:
    get_from svn("http://svn.castleproject.org:8080/svn/castle/Components/Validator/trunk/")
    build_with nant, buildfile("default.build"), FrameworkVersion35

    switches:
        parameters "sign=true","common.testrunner.enabled=false", "common.silverlight=false"

    shared_library "lib"
    build_root_dir "build"
    
dependencies:
    dependency "castle.core"             	>> "Castle.Core"
    dependency "castle.dynamicproxy" 		>> "Castle.DynamicProxy2"

exclude:
    library "Rhino.Mocks"
    library "nunit.framework"
        
package.category = "IoC"
package.description = ""
package.forum = "http://groups.google.com/group/castle-project-users"
package.homepage = "http://www.castleproject.org/"
package.name = "Castle.Components.Binder"
package.notes = ""