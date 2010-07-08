install mvcturbine:
    get_from git("git://github.com/taliesins/mvcturbine.git")
    build_with msbuild, buildfile("src/Engine/MvcTurbine.sln"), FrameworkVersion35

    switches:
        parameters "/P:Configuration=Release", "/P:IsFullBuild=True"

    with:
        tasks clean, build

    build_root_dir "build/binaries"
    shared_library "lib"

dependencies:
    dependency "castle.core"                            >> "1.2" >> "Castle.Core"
    dependency "castle.windsor"                         >> "2.1" >> "Castle.Windsor"
    dependency "castle.windsor"                         >> "2.1" >> "Castle.MicroKernel"
    dependency "castle.windsor"                         >> "2.2" >> "Castle.DynamicProxy2"
    dependency "castle.nvelocity"                       >> "1.1" >> "NVelocity"
    dependency "rhino.mocks"                            >> "Rhino.Mocks"
#   dependency "moq"                                    >> "Moq"
    dependency "log4net"                                >> "log4net"
#   dependency "structuremap"                           >> "StructureMap"
#   dependency "ninject"                                >> "Ninject"
    dependency "mvccontrib"                             >> "1.0" >> "MvcContrib"
    dependency "mvccontrib"                             >> "1.0" >> "MvcContrib.Castle"

exclude:
    library "Rhino.Mocks"
    library "nunit.framework"

package.category = "Web"
package.description = "A view engine for ASP.NET MVC."
package.homepage = "http://sparkviewengine.com/"
package.name = "MvcTurbine"
package.notes = ""