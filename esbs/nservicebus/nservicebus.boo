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
    depend "nhibernate"       >> "NHibernate"
    depend "nhibernate"       >> "NHibernate.ByteCode.Castle"
    depend "nhibernate"       >> "NHibernate.ByteCode.LinFu"
    depend "nhibernate"       >> "Iesi.Collections"
    depend "nhibernate"       >> "Antlr3.Runtime"
    depend "nhibernate"       >> "LinFu.DynamicProxy"
    depend "nhibernate"       >> "Remotion.Data.Linq"
    depend "fluentnhibernate" >> "fluentnhibernate"

package.category = "ESB"
package.description = "NServiceBus"
package.forum  = ""
package.homepage = "www.nservicebus.com"
package.name = "NServiceBus"
package.notes = ""
