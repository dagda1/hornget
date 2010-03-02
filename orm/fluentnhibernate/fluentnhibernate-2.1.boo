install fluentnhibernate:
  get_from git("git://github.com/jagregory/fluent-nhibernate.git")

  build_with batch, buildfile("Build.bat"), FrameworkVersion35

  shared_library "tools/NHibernate"
  build_root_dir "build"

dependencies:
  depend "castle.core"	        >> "Castle.Core"
  depend "castle.dynamicproxy"	>> "Castle.DynamicProxy2"
  depend "nhibernate"				>> "2.1" >> "NHibernate"
  depend "nhibernate"				>> "2.1" >> "NHibernate.ByteCode.Castle"
  depend "nhibernate"				>> "2.1" >> "Iesi.Collections"
	
exclude:
  library "Rhino.Mocks"
  
package.category = "ORM"
package.description = "Fluent, XML-less, compile safe, automated, testable mappings for NHibernate "
package.forum = "http://groups.google.com/group/fluent-nhibernate"
package.homepage = "http://fluentnhibernate.org/"
package.name = "Fluent NHibernate"
package.notes = ""