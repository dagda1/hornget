install rhino.commons:
    #get_from git("git://github.com/lorenzomelato/rhino-commons.git")
    get_from git("git://github.com/dagda1/rhino-commons.git")
    build_with psake, buildfile("default.ps1"), FrameworkVersion35    
	with:
		tasks Compile    

build_root_dir "build"
shared_library "SharedLibs"

dependencies:
	dependency "castle.core"             			>> "1.2"		>> "Castle.Core"
	dependency "castle.dynamicproxy"				>> "2.2"		>> "Castle.DynamicProxy2"
	dependency "castle.windsor"						>> "2.1"		>> "Castle.MicroKernel"
	dependency "castle.windsor"						>> "2.1"		>> "Castle.Windsor"
	dependency "castle.services.transaction"						>> "Castle.Services.Transaction"
	dependency "castle.core"						>> "1.2"		>> "Castle.Services.Logging.Log4netIntegration"
	dependency "castle.core"						>> "1.2"		>> "Castle.Services.Logging.NLogIntegration"
	dependency "castle.components.validator"		>> "1.1"		>> "Castle.Components.Validator"
	dependency "castle.activerecord"				>> "2.1"		>> "Castle.ActiveRecord"
	dependency "castle.facilities.automatictransactionmanagement"	>> "Castle.Facilities.AutomaticTransactionManagement"
	dependency "nhibernate.caches"									>> "NHibernate.Caches.SysCache"
	dependency "nhibernate"											>> "2.1" >> "NHibernate"     
	dependency "nhibernate"											>> "2.1" >> "NHibernate.ByteCode.Castle"
	dependency "nhibernate"											>> "2.1" >> "Iesi.Collections"
	dependency "rhino.dsl"											>> "Rhino.Dsl"

package.category = "Frameworks"
package.description = "Support and extension for many advance usecases"
package.forum = "http://groups.google.co.uk/group/rhino-tools-dev?hl=en"
package.homepage = "http://github.com/lorenzomelato/rhino-commons"
package.name = "Rhino.Dsl"
package.notes = ""