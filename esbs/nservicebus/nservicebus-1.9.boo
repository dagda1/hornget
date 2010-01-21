install nservicebus:
    get_from svn("https://nservicebus.svn.sourceforge.net/svnroot/nservicebus/branches/v1.9/")
    build_with batch, buildfile("build_with_strong_name.bat"), FrameworkVersion35	

    shared_library "external-bin"
    build_root_dir "build/output"

dependencies:
    depend "castle.windsor"              >> "2.1" >> "Castle.Core"
    depend "castle.windsor"              >> "2.1" >> "Castle.DynamicProxy2"
    depend "castle.windsor"            	 >> "2.1" >> "Castle.MicroKernel"
    depend "castle.windsor"              >> "2.1" >> "Castle.Windsor"
    depend "nhibernate"       >> "2.1" >> "NHibernate"
    depend "nhibernate"       >> "2.1" >> "NHibernate.ByteCode.Castle"
    depend "nhibernate"       >> "2.1" >> "Iesi.Collections"
    depend "nhibernate"       >> "2.1" >> "Antlr3.Runtime"

package.category = "ESB"
package.description = "NServiceBus"
package.forum  = ""
package.homepage = "www.nservicebus.com"
package.name = "NServiceBus"
package.notes = ""
