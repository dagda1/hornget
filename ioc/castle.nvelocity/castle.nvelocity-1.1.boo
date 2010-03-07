install castle.nvelocity:
    get_from git("git://github.com/castleproject/NVelocity.git")
    build_with nant, buildfile("default.build"), FrameworkVersion35

    switches:
        parameters "sign=true","common.testrunner.enabled=false", "common.silverlight=false"

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

exclude:
    library "Rhino.Mocks"
    library "nunit.framework"
    
package.category = "ViewEngines"
package.description = "NVelocity is a port of the excellent Apache Jakarta Velocity project. It is a very simple, easy to learn and extensible template engine."
package.forum = "http://groups.google.com/group/castle-project-users"
package.homepage = "http://www.castleproject.org/others/nvelocity/index.html"
package.name = "Castle NVelocity"
package.notes = ""
