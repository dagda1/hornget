install castle.dynamicproxy:
    get_from git("git://github.com/castleproject/Castle.Facilities.ActiveRecordIntegration.git")
    build_with msbuild, buildfile("buildscripts/Build.proj"), FrameworkVersion35

    switches:
        parameters "/p:TestRunner_Enabled=false"

    shared_library "lib"
    build_root_dir "build"

    mode debug:
        switches:
            parameters "/p:Configuration=Debug", "/p:TestRunner_Enabled=false"

    mode release:
         switches:
            parameters "/p:Configuration=Release", "/p:TestRunner_Enabled=false"
                        
    mode aptca:
         switches:
            parameters "/p:Configuration=Release", "/p:TestRunner_Enabled=false", "/p:AllowPartiallyTrustedCallers=True"

dependencies:
    dependency "castle.core"             						>> "1.2" >> "Castle.Core"
    dependency "castle.dynamicproxy"							>> "2.2" >> "Castle.DynamicProxy2"
    dependency "castle.windsor"									>> "2.1" >> "Castle.MicroKernel"
    dependency "castle.windsor"									>> "2.1" >> "Castle.Windsor"
    dependency "castle.services.transaction"						>> "castle.services.transaction"
    dependency "castle.components.validator"					>> "1.1" >> "Castle.Components.Validator"
    dependency "castle.facilities.automatictransactionmanagement"	>> "Castle.Facilities.AutomaticTransactionManagement"
    dependency "castle.activerecord"                >> "2.1" >> "castle.activerecord"
    dependency "nhibernate"				>> "2.1"					>> "Nhibernate"
    dependency "nhibernate"				>> "2.1"					>> "Iesi.Collections"
    dependency "nhibernate"				>> "2.1"					>> "NHibernate.ByteCode.Castle"

exclude:
    library "Rhino.Mocks"
    library "nunit.framework"
    
package.category = "IoC"
package.description = "The ActiveRecord Integration Facility takes care of configuring and starting Castle ActiveRecord and adds declarative transaction support integration."
package.forum = "http://groups.google.co.uk/group/castle-project-users?hl=en"
package.homepage = "http://www.castleproject.org/container/facilities/v1rc3/arintegration/index.html"
package.name = "Castle Facilities Activerecord Integration"
package.notes = ""