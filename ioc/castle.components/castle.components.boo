install castle.components:
    include:
        repository(castle, part("SharedLibs"), to("SharedLibs"))
        repository(castle, part("Components"), to("Components"))
        repository(castle, part("common.xml"), to("common.xml"))
        repository(castle, part("common-project.xml"), to("common-project.xml"))
        repository(castle, part("CastleKey.snk"), to("CastleKey.snk"))
    build_with nant, buildfile("Components/components.build"), FrameworkVersion35

    switches:
        parameters "sign=true","common.testrunner.enabled=false", "common.silverlight=false"

    shared_library "SharedLibs"
    build_root_dir "build"

dependencies:
    dependency "castle.tools" >> "castle.core"
    dependency "castle.tools" >> "NVelocity"
    dependency "castle.windsor"   >> "Castle.DynamicProxy2"
    dependency "castle.windsor"   >> "Castle.MicroKernel"
    dependency "castle.windsor"   >> "Castle.Windsor"
    dependency "rhino.dsl"   >> "Boo.Lang"
    dependency "rhino.dsl"   >> "Boo.Lang.CodeDom"
    dependency "rhino.dsl"   >> "Boo.Lang.Compiler"
    dependency "rhino.dsl"   >> "Boo.Lang.dll"
    dependency "rhino.dsl"   >> "Boo.Lang.Extensions"
    dependency "rhino.dsl"   >> "Boo.Lang.Interpreter"
    dependency "rhino.dsl"   >> "Boo.Lang.Parser"
    dependency "rhino.dsl"   >> "Boo.Lang.PatternMatching"
    dependency "rhino.dsl"   >> "Boo.Lang.Useful"	

exclude:
	library "Iesi.Collections"
	library "NHibernate.ByteCode.Castle"
	library "NHibernate"
	library "NHibernate.Search"
	library "Nhibernate.Linq"

package.category = "IoC"
package.description = "Castle validator, templating engine etc."
package.forum = "http://groups.google.co.uk/group/castle-project-users?hl=en"
package.homepage = "http://www.castleproject.org/"
package.name = "Castle Components"
package.notes = ""