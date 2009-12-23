install castle.facilities.nhibernateintegration:
    get_from svn("http://svn.castleproject.org:8080/svn/castle/Facilities/NHibernateIntegration/trunk/")
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
    dependency "nhibernate"				>> "2.1"					>> "Nhibernate"
    dependency "nhibernate"				>> "2.1"					>> "Iesi.Collections"
    dependency "nhibernate"				>> "2.1"					>> "NHibernate.ByteCode.Castle"

exclude:
    library "Rhino.Mocks"
    library "nunit.framework"
    
package.category = "IoC"
package.description = "The NHibernate Facility enables the usage of NHibernate O/R framework for your components."
package.forum = "http://groups.google.co.uk/group/castle-project-users?hl=en"
package.homepage = "http://www.castleproject.org/container/facilities/trunk/nhibernate/index.html"
package.name = "Castle Facilities Nhibernate Integration"
package.notes = ""
