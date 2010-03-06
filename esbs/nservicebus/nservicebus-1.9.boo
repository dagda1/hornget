install nservicebus:
    get_from svn("https://nservicebus.svn.sourceforge.net/svnroot/nservicebus/branches/v1.9/")
    build_with batch, buildfile("build_with_strong_name.bat"), FrameworkVersion35	

    shared_library "external-bin"
    build_root_dir "build/output"

dependencies:
    dependency "castle.core"            >> "1.2"	>> "Castle.Core"
    dependency "castle.dynamicproxy"	>> "2.2"	>> "Castle.DynamicProxy2"
    dependency "castle.windsor"			>> "2.1"	>> "Castle.MicroKernel"
    dependency "castle.windsor"			>> "2.1"	>> "Castle.Windsor"
    dependency "nhibernate"							>> "NHibernate"
    dependency "nhibernate"							>> "NHibernate.ByteCode.Castle"
    dependency "nhibernate"							>> "Iesi.Collections"
    dependency "nhibernate"							>> "Antlr3.Runtime"
    dependency "nhibernate"							>> "Remotion.Data.Linq"

package.category = "ESB"
package.description = "NServiceBus"
package.forum  = ""
package.homepage = "www.nservicebus.com"
package.name = "NServiceBus"
package.notes = ""
