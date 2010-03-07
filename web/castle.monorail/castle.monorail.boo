install castle.core:
    get_from git("git://github.com/castleproject/Castle.MonoRail.git")
    build_with msbuild, buildfile("buildscripts/Build.proj"), FrameworkVersion35

    switches:
        parameters "/p:TestRunner_Enabled=false"

    shared_library "lib"
    build_root_dir "build"

    mode debug:
        switches:
            parameters "/p:Configuration=Debug", "/p:TestRunner_Enabled=false"

    mode release:
         switches:
            parameters "/p:Configuration=Release", "/p:TestRunner_Enabled=false"
                        
    mode aptca:
         switches:
            parameters "/p:Configuration=Release", "/p:TestRunner_Enabled=false", "/p:AllowPartiallyTrustedCallers=True"
    
dependencies:
    dependency "castle.core"             				>> "1.2" >> "Castle.Core"
    dependency "castle.activerecord"					>> "2.1" >> "Castle.ActiveRecord"	
    dependency "nhibernate"								>> "2.1" >> "NHibernate"
    dependency "nhibernate"								>> "2.1" >> "Iesi.Collections"
    dependency "nhibernate"								>> "2.1" >> "NHibernate.ByteCode.Castle"
    dependency "castle.activerecord"					>> "2.1" >> "log4net"
    dependency "castle.dynamicproxy"					>> "2.2" >> "Castle.DynamicProxy2"
    dependency "castle.windsor"							>> "2.1" >> "Castle.MicroKernel"
    dependency "castle.windsor"							>> "2.1" >> "Castle.Windsor"
    dependency "castle.nvelocity"                       >> "NVelocity"
    dependency "castle.components.binder"               >> "Castle.Components.Binder"
    dependency "castle.templateengine"                  >> "Castle.Components.Common.TemplateEngine.NVelocityTemplateEngine"
    dependency "castle.templateengine"                  >> "Castle.Components.Common.TemplateEngine"
    dependency "castle.components.dictionaryadapter"    >> "Castle.Components.DictionaryAdapter"
    dependency "castle.components.pagination"           >> "Castle.Components.Pagination"
    dependency "castle.components.validator"			>> "1.1" >> "Castle.Components.Validator"
    

package.category = "IoC"
package.description = "MonoRail differs from the standard WebForms way of development as it enforces separation of concerns; controllers just handle application flow, models represent the data, and the view is just concerned about presentation logic."
package.forum = "http://groups.google.co.uk/group/castle-project-users?hl=en"
package.homepage = "http://www.castleproject.org/monorail/"
package.name = "Castle Monorail"
package.notes = ""