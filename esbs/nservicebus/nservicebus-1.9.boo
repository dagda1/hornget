install nservicebus:
    get_from svn("https://nservicebus.svn.sourceforge.net/svnroot/nservicebus/branches/v1.9/")
    build_with batch, buildfile("build_with_strong_name.bat"), FrameworkVersion35	

    shared_library "external-bin"
    build_root_dir "build/output"

dependencies:
    depend "castle.windsor"              >> "Castle.Core"
    depend "castle.windsor"              >> "Castle.DynamicProxy2"
    depend "castle.windsor"            	 >> "Castle.MicroKernel"
    depend "castle.windsor"              >> "Castle.Windsor"
    depend "nhibernate"       >> "NHibernate"
    depend "nhibernate"       >> "NHibernate.ByteCode.Castle"
    depend "nhibernate"       >> "Iesi.Collections"
    depend "nhibernate"       >> "Antlr3.Runtime"
    depend "nhibernate"       >> "Remotion.Data.Linq"

package.category = "ESB"
package.description = "NServiceBus"
package.forum  = ""
package.homepage = "www.nservicebus.com"
package.name = "NServiceBus"
package.notes = ""
