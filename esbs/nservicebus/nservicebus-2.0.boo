install nservicebus:
    get_from svn("https://nservicebus.svn.sourceforge.net/svnroot/nservicebus/branches/v2.0/")
    build_with batch, buildfile("build.bat"), FrameworkVersion35	

    shared_library "external-bin"
    build_root_dir "build/output"
    
dependencies:
    depend "castle.windsor"              >> "Castle.Core"
    depend "castle.windsor"              >> "Castle.DynamicProxy2"
    depend "castle.windsor"            	 >> "Castle.MicroKernel"
    depend "castle.windsor"              >> "Castle.Windsor"
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
