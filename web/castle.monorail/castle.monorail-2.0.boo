install castle.core:
    get_from git("git://github.com/castleproject/Castle.MonoRail.git", "2-0-stable")
    build_with nant, buildfile("default.build"), FrameworkVersion35

    switches:
        parameters "sign=true","common.testrunner.enabled=false", "common.silverlight=false"

    shared_library "lib"
    build_root_dir "build"

    mode debug:
        switches:
            parameters "project.config=debug", "sign=true","common.testrunner.enabled=false", "common.silverlight=false"

    mode release:
         switches:
            parameters "project.config=release", "sign=true","common.testrunner.enabled=false", "common.silverlight=false"
                        
    mode aptca:
         switches:
            parameters "project.config=aptca", "sign=true","common.testrunner.enabled=false", "common.silverlight=false"
    
dependencies:
    dependency "castle.core"             				>> "1.2" >> "Castle.Core"
    dependency "castle.activerecord"                    >> "2.1" >> "Castle.ActiveRecord"
    dependency "castle.activerecord"                    >> "2.1" >> "NHibernate"
    dependency "castle.activerecord"                    >> "2.1" >> "Iesi.Collections"
    dependency "castle.activerecord"                    >> "2.1" >> "NHibernate.ByteCode.Castle"
    dependency "castle.activerecord"                    >> "1.2.10" >> "log4net"
    dependency "castle.windsor"                         >> "2.1" >> "Castle.Windsor"
    dependency "castle.windsor"                         >> "2.1" >> "Castle.MicroKernel"
    dependency "castle.windsor"                         >> "2.2" >> "Castle.DynamicProxy2"
    dependency "castle.nvelocity"                       >> "1.1" >> "NVelocity"
    dependency "castle.components.binder"               >> "1.1" >> "Castle.Components.Binder"
    dependency "castle.templateengine"                  >> "1.1" >> "Castle.Components.Common.TemplateEngine.NVelocityTemplateEngine"
    dependency "castle.templateengine"                  >> "1.1" >> "Castle.Components.Common.TemplateEngine"
    dependency "castle.components.dictionaryadapter"    >> "1.1" >> "Castle.Components.DictionaryAdapter"
    dependency "castle.components.pagination"           >> "1.1" >> "Castle.Components.Pagination"
    dependency "castle.components.validator"            >> "1.1" >> "Castle.Components.Validator"
    

package.category = "IoC"
package.description = "MonoRail differs from the standard WebForms way of development as it enforces separation of concerns; controllers just handle application flow, models represent the data, and the view is just concerned about presentation logic."
package.forum = "http://groups.google.co.uk/group/castle-project-users?hl=en"
package.homepage = "http://www.castleproject.org/monorail/"
package.name = "Castle Monorail"
package.notes = ""