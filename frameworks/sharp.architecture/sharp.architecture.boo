install sharp.architecture:
    get_from git("git://github.com/codai/Sharp-Architecture.git")
    build_with batch, buildfile("go.bat"), FrameworkVersion35
    with:
        tasks compileandcopytobuild

    shared_library "bin"
    build_root_dir "build"

dependencies:
    dependency "castle.core"             		>> "1.2" >> "Castle.Core"
    dependency "castle.dynamicproxy"			>> "2.2" >> "Castle.DynamicProxy2"
    dependency "castle.windsor"					>> "2.1" >> "Castle.MicroKernel"
    dependency "castle.windsor"					>> "2.1" >> "Castle.Windsor"
    dependency "castle.core"					>> "1.2" >> "Castle.Services.Logging.Log4netIntegration"
    dependency "castle.components.validator"    >> "1.1" >> "Castle.Components.Validator"
    dependency "fluentnhibernate"				>> "2.1" >> "FluentNHibernate"
    dependency "nhibernate"           >> "2.1" >> "NHibernate"     
    dependency "nhibernate"           >> "2.1" >> "NHibernate.ByteCode.Castle"
    dependency "nhibernate"           >> "2.1" >> "Iesi.Collections"
    dependency "nhibernate.linq"      >> "2.1" >> "NHibernate.Linq"
    dependency "nhibernate.validator"          >> "NHibernate.Validator"
    dependency "mvccontrib"           >> "1.0" >> "MvcContrib"
    dependency "mvccontrib"           >> "1.0" >> "MvcContrib.FluentHtml"
    dependency "mvccontrib"           >> "1.0" >> "MvcContrib.ModelAttributes"
    dependency "mvccontrib"           >> "1.0" >> "MvcContrib.TestHelper"
    dependency "mvccontrib"           >> "1.0" >> "MvcContrib.Castle"

package.category = "Frameworks"
package.description = "This is a solid architectural foundation for rapidly building maintainable web applications leveraging the ASP.NET MVC framework with NHibernate."
package.forum = "http://groups.google.com/group/sharp-architecture"
package.homepage = "http://code.google.com/p/sharp-architecture/"
package.name = "Sharp Architecture"
package.notes = ""