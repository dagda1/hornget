install sharp.architecture:
    get_from git("git://github.com/codai/Sharp-Architecture.git")
    build_with batch, buildfile("go.bat"), FrameworkVersion35
    with:
        tasks compileandcopytobuild

    shared_library "bin"
    build_root_dir "build"

dependencies:
    depend "castle.dynamicproxy"						>> "Castle.Core"
    depend "castle.dynamicproxy"						>> "Castle.DynamicProxy2"
    depend "castle.windsor"								>> "Castle.MicroKernel"
    depend "castle.windsor"								>> "Castle.Windsor"
    depend "castle.core"								>> "Castle.Services.Logging.Log4netIntegration"
    depend "castle.components.validator"				>> "Castle.Components.Validator"
    depend "fluentnhibernate"              >> "FluentNHibernate"
    depend "nhibernate"           >> "2.1" >> "NHibernate"     
    depend "nhibernate"           >> "2.1" >> "NHibernate.ByteCode.Castle"
    depend "nhibernate"           >> "2.1" >> "Iesi.Collections"
    depend "nhibernate.linq"      >> "2.1" >> "NHibernate.Linq"
    depend "nhibernate.validator"          >> "NHibernate.Validator"
    depend "mvccontrib"           >> "1.0" >> "MvcContrib"
    depend "mvccontrib"           >> "1.0" >> "MvcContrib.FluentHtml"
    depend "mvccontrib"           >> "1.0" >> "MvcContrib.ModelAttributes"
    depend "mvccontrib"           >> "1.0" >> "MvcContrib.TestHelper"
    depend "mvccontrib"           >> "1.0" >> "MvcContrib.Castle"

package.category = "Frameworks"
package.description = "This is a solid architectural foundation for rapidly building maintainable web applications leveraging the ASP.NET MVC framework with NHibernate."
package.forum = "http://groups.google.com/group/sharp-architecture"
package.homepage = "http://code.google.com/p/sharp-architecture/"
package.name = "Sharp Architecture"
package.notes = ""