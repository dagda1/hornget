install fluentnhibernate:
  get_from git("git://github.com/jagregory/fluent-nhibernate.git")

  build_with batch, buildfile("Build.bat"), FrameworkVersion35

  shared_library "tools/NHibernate"
  build_root_dir "build"

dependencies:
	dependency "castle.core"             		>> "1.2" >> "Castle.Core"
    dependency "castle.dynamicproxy"			>> "2.2" >> "Castle.DynamicProxy2"
	dependency "nhibernate"						>> "NHibernate"
	dependency "nhibernate"						>> "NHibernate.ByteCode.Castle"
	dependency "nhibernate"						>> "Iesi.Collections"
  
exclude:
  library "Rhino.Mocks"
  
package.category = "ORM"
package.description = "Fluent, XML-less, compile safe, automated, testable mappings for NHibernate "
package.forum = "http://groups.google.com/group/fluent-nhibernate"
package.homepage = "http://fluentnhibernate.org/"
package.name = "Fluent NHibernate"
package.notes = ""
