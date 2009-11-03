install castle.activerecord:
    include:
        repository(castle, part("SharedLibs"), to("SharedLibs"))
        repository(castle, part("ActiveRecord"), to("ActiveRecord"))
        repository(castle, part("common.xml"), to("common.xml"))
        repository(castle, part("common-project.xml"), to("common-project.xml"))
        repository(castle, part("CastleKey.snk"), to("CastleKey.snk"))

    build_with nant, buildfile("ActiveRecord/activerecord.build"), FrameworkVersion35

    switches:
        parameters "sign=false","common.testrunner.enabled=false", "common.silverlight=false"

    shared_library "SharedLibs"
    build_root_dir "build"

dependencies:
    depend "castle.tools"                >> "Castle.Core"
    depend "castle.tools"                >> "Castle.DynamicProxy2"
    depend "castle.components"           >> "Castle.Components.Validator"
    depend "nhibernate.search"          >> "NHibernate.Search"
    depend "nhibernate"         >> "2.1" >> "NHibernate"
    depend "nhibernate"         >> "2.1" >> "NHibernate.ByteCode.Castle"
    depend "nhibernate"         >> "2.1" >> "Iesi.Collections"
    depend "rhino.dsl"   >> "Boo.Lang"
    depend "rhino.dsl"   >> "Boo.Lang.CodeDom"
    depend "rhino.dsl"   >> "Boo.Lang.Compiler"
    depend "rhino.dsl"   >> "Boo.Lang.dll"
    depend "rhino.dsl"   >> "Boo.Lang.Extensions"
    depend "rhino.dsl"   >> "Boo.Lang.Interpreter"
    depend "rhino.dsl"   >> "Boo.Lang.Parser"
    depend "rhino.dsl"   >> "Boo.Lang.PatternMatching"
    depend "rhino.dsl"   >> "Boo.Lang.Useful"

package.category = "IoC"
package.description = "The Castle ActiveRecord project is an implementation of the ActiveRecord pattern for .NET."
package.forum = "http://groups.google.co.uk/group/castle-project-users?hl=en"
package.homepage = "http://www.castleproject.org/"
package.name = "Castle ActiveRecord"
package.notes = ""