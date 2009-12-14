install castle.monorail:
    get_from svn("http://svn.castleproject.org:8080/svn/castle/MonoRail/trunk/")
    build_with nant, buildfile("default.build"), FrameworkVersion35

    switches:
        parameters "sign=true","common.testrunner.enabled=false", "common.silverlight=false"

    shared_library "lib"
    build_root_dir "build"
    
dependencies:
    dependency "castle.activerecord"                    >> "Castle.ActiveRecord"
    dependency "castle.activerecord"                    >> "NHibernate"
    dependency "castle.activerecord"                    >> "Iesi.Collections"
    dependency "castle.activerecord"                    >> "NHibernate.ByteCode.Castle"
    dependency "castle.activerecord"                    >> "Castle.Core"
    dependency "castle.activerecord"                    >> "log4net"
    dependency "castle.windsor"                         >> "Castle.Windsor"
    dependency "castle.windsor"                         >> "Castle.MicroKernel"
    dependency "castle.windsor"                         >> "Castle.DynamicProxy2"
    dependency "castle.nvelocity"                       >> "NVelocity"
    dependency "castle.components.binder"               >> "Castle.Components.Binder"
    dependency "castle.templateengine"                  >> "Castle.Components.Common.TemplateEngine.NVelocityTemplateEngine"
    dependency "castle.templateengine"                  >> "Castle.Components.Common.TemplateEngine"
    dependency "castle.components.dictionaryadapter"    >> "Castle.Components.DictionaryAdapter"
    dependency "castle.components.pagination"           >> "Castle.Components.Pagination"
    dependency "castle.components.validator"            >> "Castle.Components.Validator"
    dependency "castle.components.emailsender" 			>> "Castle.Components.Common.EmailSender"
    

package.category = "IoC"
package.description = "Windsor is an inversion of control container that aggregates the MicroKernel offering a friendly fool-proof interface and options to external configurations."
package.forum = "http://groups.google.co.uk/group/castle-project-users?hl=en"
package.homepage = "http://www.castleproject.org/"
package.name = "Castle Windsor"
package.notes = ""