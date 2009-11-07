install castle.nvelocity:
    get_from svn("https://svn.castleproject.org/svn/castle/NVelocity/trunk/")
    build_with nant, buildfile("default.build"), FrameworkVersion35	

    with:
        tasks build

    shared_library "lib"
    build_root_dir "build"

exclude:
	library "Iesi.Collections"
	library "NHibernate.ByteCode.Castle"
	library "NHibernate"
	library "NHibernate.Search"
	library "Nhibernate.Linq"
	library "Lucene.Net"

package.category = "ViewEngines"
package.description = "NVelocity is a port of the excellent Apache Jakarta Velocity project. It is a very simple, easy to learn and extensible template engine."
package.forum = "http://groups.google.com/group/castle-project-users"
package.homepage = "http://www.castleproject.org/others/nvelocity/index.html"
package.name = "Castle NVelocity"
package.notes = ""
