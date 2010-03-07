install castle.templateengine:
    get_from git("git://github.com/castleproject/Castle.Components.TemplateEngine.git")
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
    depend "castle.nvelocity" >> "NVelocity"
    depend "castle.core"      >> "Castle.Core"

exclude:
    library "Rhino.Mocks"
    library "nunit.framework"
    
package.category = "TemplateEngines"
package.description = "The TemplateEngine component is used to abstract template processing approaches. It is useful to provide a minimal template processing to your applications. It comes with a default implementation which relies on NVelocity."
package.forum = "http://groups.google.com/group/castle-project-users"
package.homepage = "http://www.castleproject.org/components/templateengine/index.html"
package.name = "Castle TemplateEngine Component"
package.notes = ""