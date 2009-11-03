install castle.windsor:
    include:
        repository(castle, part("SharedLibs"), to("SharedLibs"))
        repository(castle, part("InversionOfControl"), to("InversionOfControl"))
        repository(castle, part("common.xml"), to("common.xml"))
        repository(castle, part("common-project.xml"), to("common-project.xml"))
        repository(castle, part("CastleKey.snk"), to("CastleKey.snk"))
    build_with nant, buildfile("InversionOfControl/InversionOfControl.build"), FrameworkVersion35

    switches:
        parameters "sign=true","common.testrunner.enabled=false", "common.silverlight=false"

    shared_library "SharedLibs"
    build_root_dir "build"

dependencies:
    dependency "castle.tools" >> "castle.core"
    dependency "castle.tools" >> "Castle.DynamicProxy2"
    depend "rhino.dsl"   >> "Boo.Lang"
    depend "rhino.dsl"   >> "Boo.Lang.CodeDom"
    depend "rhino.dsl"   >> "Boo.Lang.Compiler"
    depend "rhino.dsl"   >> "Boo.Lang.dll"
    depend "rhino.dsl"   >> "Boo.Lang.Extensions"
    depend "rhino.dsl"   >> "Boo.Lang.Interpreter"
    depend "rhino.dsl"   >> "Boo.Lang.Parser"
    depend "rhino.dsl"   >> "Boo.Lang.PatternMatching"
    depend "rhino.dsl"   >> "Boo.Lang.Useful"

exclude:
	library "Iesi.Collections"
	library "NHibernate.ByteCode.Castle"
	library "NHibernate"
	library "NHibernate.Search"
	library "Nhibernate.Linq"

package.category = "IoC"
package.description = "Windsor is an inversion of control container that aggregates the MicroKernel offering a friendly fool-proof interface and options to external configurations."
package.forum = "http://groups.google.co.uk/group/castle-project-users?hl=en"
package.homepage = "http://www.castleproject.org/"
package.name = "Castle Windsor"
package.notes = ""