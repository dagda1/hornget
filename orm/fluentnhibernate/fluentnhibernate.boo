install fluentnhibernate:
    get_from git("git://github.com/jagregory/fluent-nhibernate.git")
    build_with msbuild, buildfile("src/FluentNHibernate.sln"), FrameworkVersion35		

    shared_library "tools/NHibernate"
    build_root_dir "build"

dependencies:
    depend "castle.core"	        >> "Castle.Core"
    depend "castle.dynamicproxy"	>> "Castle.DynamicProxy2"
    depend "castle.dynamicproxy"	>> "Castle.DynamicProxy"
    depend "nhibernate.caches"		>> "NHibernate.Caches.SysCache"
    depend "nhibernate"				>> "NHibernate"
    depend "nhibernate"				>> "NHibernate.ByteCode.Castle"
    depend "nhibernate"				>> "Iesi.Collections"
	
exclude:
    library "Rhino.Mocks"
  
package.category = "ORM"
package.description = "Fluent, XML-less, compile safe, automated, testable mappings for NHibernate "
package.forum = "http://groups.google.com/group/fluent-nhibernate"
package.homepage = "http://fluentnhibernate.org/"
package.name = "Fluent NHibernate"
package.notes = ""