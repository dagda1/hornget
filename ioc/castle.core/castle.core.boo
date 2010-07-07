install castle.core:
    get_from git("git://github.com/castleproject/Castle.Core.git")
    build_with msbuild, buildfile("buildscripts/Build.proj"), FrameworkVersion35

    switches:
        parameters "/p:TestRunner_Enabled=false", "/p:BuildConfigKey=NET35"

    shared_library "lib"
    build_root_dir "build"

    mode debug:
        switches:
            parameters "/p:Configuration=Debug", "/p:TestRunner_Enabled=false", "/p:BuildConfigKey=NET35"

    mode release:
         switches:
            parameters "/p:Configuration=Release", "/p:TestRunner_Enabled=false", "/p:BuildConfigKey=NET35"
                        
    mode aptca:
         switches:
            parameters "/p:Configuration=Release", "/p:TestRunner_Enabled=false", "/p:AllowPartiallyTrustedCallers=True", "/p:BuildConfigKey=NET35"

exclude:
    library "log4net"
    library "nlog"
  
package.category = "IoC"
package.description = "Core library."
package.forum = "http://groups.google.com/group/castle-project-users"
package.homepage = "http://www.castleproject.org/"
package.name = "Castle.Core"
package.notes = ""