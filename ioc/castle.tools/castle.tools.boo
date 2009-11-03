install castle.tools:
    include:
        repository(castle, part("Tools"), to("Tools"))
        repository(castle, part("Core"), to("Core"))
        repository(castle, part("common.xml"), to("common.xml"))
        repository(castle, part("common-project.xml"), to("common-project.xml"))
        repository(castle, part("CastleKey.snk"), to("CastleKey.snk"))
    build_with nant, buildfile("Tools/Tools.build"), FrameworkVersion35

    switches:
        parameters "sign=false","common.testrunner.enabled=false", "common.silverlight=false"

    shared_library "SharedLibs"
    build_root_dir "build"

exclude:
	library "Iesi.Collections"
	library "NHibernate.ByteCode.Castle"
	library "NHibernate"
	library "NHibernate.Search"
	library "Nhibernate.Linq"

package.category = "IoC"
package.description = "Dynamic Proxy Generator for the CLR."
package.forum = "http://groups.google.co.uk/group/castle-project-users?hl=en"
package.homepage = "http://www.castleproject.org/"
package.name = "Castle Tools"
package.notes = ""