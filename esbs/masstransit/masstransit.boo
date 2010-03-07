install masstransit:
    get_from svn("http://masstransit.googlecode.com/svn/trunk/")
    build_with batch, buildfile("build.bat"), FrameworkVersion35	

    shared_library "lib"
    build_root_dir "bin"

dependencies:
    dependency "castle.core"             		>> "1.2"	>> "Castle.Core"
    dependency "castle.dynamicproxy"			>> "2.2"	>> "Castle.DynamicProxy2"
    dependency "castle.windsor"					>> "2.1"	>> "Castle.MicroKernel"
    dependency "castle.windsor"					>> "2.1"	>> "Castle.Windsor"
    dependency "fluentnhibernate"							>> "FluentNHibernate"
    dependency "nhibernate"						>> "2.1"	>> "NHibernate"
    dependency "nhibernate"						>> "2.1"	>> "NHibernate.ByteCode.Castle"
    dependency "nhibernate"						>> "2.1"	>> "Iesi.Collections"
    dependency "nhibernate.linq"				>> "2.1"	>> "NHibernate.Linq"
    dependency "structuremap"					>> "2.5.4"	>> "StructureMap"

package.category = "ESB"
package.description = "MassTransit is lean service bus implementation for building loosely coupled applications using the .NET framework"
package.forum  = "http://groups.google.com/group/masstransit-discuss"
package.homepage = "http://code.google.com/p/masstransit/"
package.name = "MassTransit"
package.notes = ""
