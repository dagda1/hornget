install castle.core:
    get_from git("git://github.com/castleproject/Castle.Components.Binder.git")
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
	dependency "castle.core"             		>> "1.2" >> "Castle.Core"
	dependency "castle.components.validator"    >> "1.1" >> "Castle.Components.Validator"

exclude:
    library "Rhino.Mocks"
    library "nunit.framework"
    
package.category = "IoC"
package.description = ""
package.forum = "http://groups.google.com/group/castle-project-users"
package.homepage = "http://www.castleproject.org/"
package.name = "Castle.Components.Binder"
package.notes = ""