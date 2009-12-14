install nhibernate.jetdriver:
    get_from svn("https://nhcontrib.svn.sourceforge.net/svnroot/nhcontrib/trunk/src/NHibernate.JetDriver/")
    build_with nant, buildfile("default.build"), FrameworkVersion35 

    with:
        tasks clean,build

    shared_library "lib"
    build_root_dir "build"

dependencies:
    depend "castle.dynamicproxy"          >> "Castle.Core"
    depend "castle.dynamicproxy"          >> "Castle.DynamicProxy2"
    depend "nhibernate"   >> "2.1" >> "NHibernate"
    depend "nhibernate"   >> "2.1" >> "Iesi.Collections"
    depend "nhibernate"   >> "2.1" >> "NHibernate.ByteCode.Castle"
    depend @log4net       >> "1.2.10" >> "log4net"

package.category = "ORM"
package.description = "NHibernate JetDriver."
package.forum = "http://groups.google.co.uk/group/nhusers?hl=en"
package.homepage = "http://www.ohloh.net/p/NHibernateContrib"
package.name = "NHibernate JetDriver"
package.notes = ""
