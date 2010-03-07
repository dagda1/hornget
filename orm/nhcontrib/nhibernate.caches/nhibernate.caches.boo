install nhcontrib.caches:
    get_from svn("https://nhcontrib.svn.sourceforge.net/svnroot/nhcontrib/trunk/src/NHibernate.Caches/")
    build_with nant, buildfile("default.build"), FrameworkVersion35	

    switches:
        parameters "with.examples=false"

    shared_library "Lib"
    build_root_dir "build"

dependencies:
    depend "nhibernate" >> "NHibernate"
    depend "nhibernate" >> "NHibernate.ByteCode.Castle"
    depend "nhibernate" >> "NHibernate.ByteCode.LinFu"
    depend "nhibernate" >> "Iesi.Collections"
    depend "nhibernate" >> "Remotion.Data.Linq"

package.category = "ORM"
package.description = "NHibernate Caches contains several Cache Provider's for NHibernate's Cache mechanism."
package.forum = "http://groups.google.co.uk/group/nhusers?hl=en"
package.homepage = "http://www.ohloh.net/p/NHibernateContrib"
package.name = "NHibernate Caches"
package.notes = ""
