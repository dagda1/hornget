install nhibernate.burrow:
    get_from svn("https://nhcontrib.svn.sourceforge.net/svnroot/nhcontrib/trunk/src/NHibernate.Burrow/")
    build_with nant, buildfile("default.build"), FrameworkVersion2 

    switches:
        parameters "skip.tests=true"

    with:
        tasks clean,build

    shared_library "lib"
    build_root_dir "build"

dependencies:
	dependency "castle.core"            >> "1.2"	>> "Castle.Core"
    dependency "castle.dynamicproxy"	>> "2.2"	>> "Castle.DynamicProxy2"
    dependency "nhibernate"   						>>	"NHibernate"
    dependency "nhibernate"   						>> "Iesi.Collections"
    dependency "nhibernate"   						>> "NHibernate.ByteCode.Castle"
    dependency @log4net					>> "1.2.10" >> "log4net"

package.category = "ORM"
package.description = "NHibernate.Burrow is a light weight middleware developed to support .Net applications using NHibernate"
package.forum = "http://groups.google.co.uk/group/nhusers?hl=en"
package.homepage = "http://www.ohloh.net/p/NHibernateContrib"
package.name = "NHibernate Burrrow"
package.notes = ""
