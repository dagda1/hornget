install mvccontrib:
    get_from git("git://github.com/mvccontrib/MvcContrib.git")
    build_with nant, buildfile("nant.build"), FrameworkVersion35	
    with:
        tasks build
    switches:
        parameters "runtests=false"
    
    shared_library "bin"
    build_root_dir "build"

dependencies:  
    dependency "castle.dynamicproxy"								>> "Castle.Core"
    dependency "castle.dynamicproxy"								>> "Castle.DynamicProxy"
    dependency "castle.dynamicproxy"								>> "Castle.DynamicProxy2"
    dependency "castle.activerecord"								>> "Castle.ActiveRecord"
    dependency "castle.components.binder"							>> "Castle.Components.Binder"
    dependency "castle.components.emailsender"						>> "Castle.Components.Common.EmailSender"
    dependency "castle.templateengine"								>> "Castle.Components.Common.TemplateEngine.NVelocityTemplateEngine"
    dependency "castle.templateengine"								>> "Castle.Components.Common.TemplateEngine"
    dependency "castle.components.dictionaryadapter"				>> "Castle.Components.DictionaryAdapter"
    dependency "castle.components.pagination"						>> "Castle.Components.Pagination"
    dependency "Castle.Components.Scheduler"						>> "Castle.Components.Scheduler"
    dependency "Castle.Components.Scheduler"						>> "Castle.Components.Scheduler.WindsorExtension"
    dependency "castle.components.validator"						>> "Castle.Components.Validator"
    dependency "castle.facilities.activerecordintegration"			>> "Castle.Facilities.ActiveRecordIntegration"
    dependency "castle.facilities.automatictransactionmanagement"   >> "Castle.Facilities.AutomaticTransactionManagement"
    dependency "castle.facilities.batchregistration"   >> "Castle.Facilities.BatchRegistration"
    dependency "castle.facilities"   >> "Castle.Facilities.Cache"
    dependency "castle.facilities"   >> "Castle.Facilities.Logging"
    dependency "castle.facilities.nhibernateintegration"	>> "Castle.Facilities.NHibernateIntegration"
    dependency "castle.facilities"   >> "Castle.Facilities.Synchronize"
    dependency "castle.facilities"   >> "Castle.Facilities.WcfIntegration"
    dependency "castle.windsor"      >> "Castle.MicroKernel"
    dependency "castle.windsor"      >> "Castle.Windsor"

package.category = "Web"
package.description = "This project adds additional functionality on top of the ASP.NET MVC Framework."
package.forum = "http://groups.google.co.uk/group/mvccontrib-discuss"
package.homepage = "http://www.codeplex.com/MVCContrib.org"
package.name = "MVCContrib"
package.notes = ""
