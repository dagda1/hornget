install rhino.security:
	get_from git("git://github.com/ayende/rhino-security.git")
	build_with psake, buildfile("default.ps1"), FrameworkVersion35
	with:
		tasks Compile

build_root_dir "build"
shared_library "SharedLibs"

dependencies:
	dependency "castle.core"            >> "1.2" >> "Castle.Core"
    dependency "castle.dynamicproxy"	>> "2.2" >> "Castle.DynamicProxy"	
    dependency "castle.dynamicproxy"	>> "2.2" >> "Castle.DynamicProxy2"
	depend "nhibernate"					>> "2.1" >> "NHibernate"
	depend "nhibernate"					>> "2.1" >> "NHibernate.ByteCode.Castle"
	depend "nhibernate"					>> "2.1" >> "Iesi.Collections"

package.category = "Frameworks"
package.description = "Security Infrastructure Library for NHibernate"
package.forum = "http://groups.google.co.uk/group/rhino-tools-dev?hl=en"
package.homepage = "http://ayende.com/blog/"
package.name = "Rhino.Security"
package.notes = ""