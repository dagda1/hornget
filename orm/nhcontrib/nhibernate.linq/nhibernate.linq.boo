install nhibernate.linq:
    get_from svn("https://nhcontrib.svn.sourceforge.net/svnroot/nhcontrib/trunk/src/NHibernate.Linq/")
    build_with nant, buildfile("default.build"), FrameworkVersion35	

    switches:
        parameters "sign=true","skip.tests=true"

    with:
        tasks clean,build

    generate_strong_key

    shared_library "lib"
    build_root_dir "build"

dependencies:
    depend "castle.core" 	        >> "Castle.Core"
    depend "castle.dynamicproxy" 	>> "Castle.DynamicProxy2"
    depend "nhibernate"   		>> "NHibernate"
    depend "nhibernate"   		>> "Iesi.Collections"
    depend "nhibernate"   		>> "NHibernate.ByteCode.Castle"

package.category = "ORM"
package.description = "NHibernate Linq - Linq provider for NHibernate."
package.forum = "http://groups.google.co.uk/group/nhusers?hl=en"
package.homepage = "http://www.ohloh.net/p/NHibernateContrib"
package.name = "NHibernate Linq"
package.notes = ""
