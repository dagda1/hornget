install castle.templateengine:
    get_from git("git://github.com/castleproject/Castle.Components.TemplateEngine.git", "1-1-stable")
    build_with nant, buildfile("default.build"), FrameworkVersion35

    shared_library "lib"
    build_root_dir "build"
	
dependencies:
    depend "castle.nvelocity" >> 1.1 >> "NVelocity"
    depend "castle.core"      >> 1.2 >> "Castle.Core"

exclude:
    library "Rhino.Mocks"
    library "nunit.framework"
    
package.category = "TemplateEngines"
package.description = "The TemplateEngine component is used to abstract template processing approaches. It is useful to provide a minimal template processing to your applications. It comes with a default implementation which relies on NVelocity."
package.forum = "http://groups.google.com/group/castle-project-users"
package.homepage = "http://www.castleproject.org/components/templateengine/index.html"
package.name = "Castle TemplateEngine Component"
package.notes = ""