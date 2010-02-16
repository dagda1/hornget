install castle.activerecord:
    get_from svn("http://svn.castleproject.org:8080/svn/castle/ActiveRecord/trunk/")
    build_with nant, buildfile("default.build"), FrameworkVersion35

    switches:
        parameters "sign=true","common.testrunner.enabled=false", "common.silverlight=false"

    shared_library "lib"
    build_root_dir "build"
    
    mode debug:
        switches:
            parameters "project.config=debug", "sign=true","common.testrunner.enabled=false", "common.silverlight=false"

    mode release:
         switches:
            parameters "project.config=release", "sign=true","common.testrunner.enabled=false", "common.silverlight=false"
                        
    mode aptca:
         switches:
            parameters "project.config=aptca", "sign=true","common.testrunner.enabled=false", "common.silverlight=false"

dependencies:
    dependency "castle.core"					>> "Castle.Core"
    dependency "castle.dynamicproxy"			>> "Castle.DynamicProxy2"
    dependency "castle.components.validator"    >> "Castle.Components.Validator"
    dependency "nhibernate"			>> "2.1"	>> "NHibernate"
    dependency "nhibernate"			>> "2.1"	>> "Antlr3.Runtime"
    dependency "nhibernate"			>> "2.1"	>> "Iesi.Collections"
    dependency "nhibernate"			>> "2.1"	>> "NHibernate.ByteCode.Castle"
    dependency "nhibernate"			>> "2.1"	>> "NHibernate.Linq"    
    dependency "nhibernate.search"	>> "NHibernate.Search"
    dependency "nhibernate.search"	>> "Lucene.Net"
    dependency "nhibernate.linq"	>>  "2.1"  >> "NHibernate.Linq"

exclude:
    library "Rhino.Mocks"
    library "nunit.framework"
    
package.category = "ORM"
package.description = "The Castle ActiveRecord project is an implementation of the ActiveRecord pattern for .NET."
package.forum = "http://groups.google.com/group/castle-project-users"
package.homepage = "http://www.castleproject.org/"
package.name = "Castle ActiveRecord"
package.notes = ""