install nservicebus:
    get_from svn("https://nservicebus.svn.sourceforge.net/svnroot/nservicebus/trunk/")
    build_with batch, buildfile("build.bat"), FrameworkVersion35	

    shared_library "external-bin"
    build_root_dir "build/output"
    
dependencies:
    dependency "castle.core"             		>> "1.2" >> "Castle.Core"
    dependency "castle.dynamicproxy"			>> "2.2" >> "Castle.DynamicProxy2"
    dependency "castle.windsor"					>> "2.1" >> "Castle.MicroKernel"
    dependency "castle.windsor"					>> "2.1" >> "Castle.Windsor"
    dependency "nhibernate"						>> "2.1" >> "NHibernate"
    dependency "nhibernate"						>> "2.1" >>  "NHibernate.ByteCode.Castle"
    dependency "nhibernate"						>> "2.1" >> "NHibernate.ByteCode.LinFu"
    dependency "nhibernate"						>> "2.1" >> "Iesi.Collections"
    dependency "nhibernate"						>> "2.1" >> "Antlr3.Runtime"
    dependency "nhibernate"						>> "2.1" >> "LinFu.DynamicProxy"
    dependency "nhibernate"						>> "2.1" >> "Remotion.Data.Linq"
    dependency "fluentnhibernate"				>> "2.1" >> "FluentNHibernate"

package.category = "ESB"
package.description = "NServiceBus"
package.forum  = ""
package.homepage = "www.nservicebus.com"
package.name = "NServiceBus"
package.notes = ""
