install castle.facilities:
    include: 
        repository(castle, part("SharedLibs"), to("SharedLibs"))
        repository(castle, part("Facilities"), to("Facilities"))
        repository(castle, part("common.xml"), to("common.xml"))
        repository(castle, part("common-project.xml"), to("common-project.xml"))
        repository(castle, part("CastleKey.snk"), to("CastleKey.snk"))

    build_with nant, buildfile("Facilities/facilities.build"), FrameworkVersion35

    switches:
        parameters "sign=true","common.testrunner.enabled=false", "common.silverlight=false"

    shared_library "SharedLibs"
    build_root_dir "build"

dependencies:
    dependency "castle.windsor"               >> "Castle.Core"
    dependency "castle.windsor"               >> "Castle.DynamicProxy2"
    dependency "castle.windsor"               >> "Castle.MicroKernel"
    dependency "castle.windsor"               >> "Castle.Windsor"
    dependency "castle.activerecord"          >> "Castle.ActiveRecord"
    dependency "castle.services"              >> "Castle.Services.Transaction"
    depend "castle.services"              >> "Castle.Services.Logging.Log4netIntegration"
    depend "castle.services"              >> "Castle.Services.Logging.NLogIntegration"
    depend "nhibernate"          >> "2.1" >> "NHibernate"  
    depend "nhibernate"          >> "2.1" >> "NHibernate.ByteCode.Castle"  
    depend "nhibernate.linq"     >> "2.1" >> "NHibernate.Linq"  
    depend "nhibernate.linq"     >> "2.1" >> "Lucene.Net"  
    depend "nhibernate.search"   >> "2.1" >> "NHibernate.Search"  
    depend "nhibernate.search"   >> "2.1" >> "Lucene.Net"  
    depend "rhino.dsl"   >> "Boo.Lang"
    depend "rhino.dsl"   >> "Boo.Lang.CodeDom"
    depend "rhino.dsl"   >> "Boo.Lang.Compiler"
    depend "rhino.dsl"   >> "Boo.Lang.dll"
    depend "rhino.dsl"   >> "Boo.Lang.Extensions"
    depend "rhino.dsl"   >> "Boo.Lang.Interpreter"
    depend "rhino.dsl"   >> "Boo.Lang.Parser"
    depend "rhino.dsl"   >> "Boo.Lang.PatternMatching"
    depend "rhino.dsl"   >> "Boo.Lang.Useful"
    depend "nhibernate"          >> "2.1" >> "Iesi.Collections" 
exclude:	
	library "Rhino.Mocks"
	
package.category = "IoC"
package.description = "A castle facility augments the container with new functionality."
package.forum = "http://groups.google.co.uk/group/castle-project-users?hl=en"
package.homepage = "http://www.castleproject.org/"
package.name = "Castle Facilities"
package.notes = ""