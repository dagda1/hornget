install spark:
    get_from git("git://github.com/loudej/spark.git")
    build_with nant, buildfile("spark.build"), FrameworkVersion35
    with:
        tasks build
    
    shared_library "bin"
    build_root_dir "build"

dependencies:
    dependency "castle.core"                            >> "1.2" >> "Castle.Core"
    dependency "castle.monorail"                        >> "2.0" >> "Castle.MonoRail.Framework"
    dependency "castle.monorail"                        >> "2.0" >> "Castle.MonoRail.TestSupport"
    dependency "castle.monorail"                        >> "2.0" >> "Castle.MonoRail.Views.Spark"
    dependency "castle.components.dictionaryadapter"    >> "1.1" >> "Castle.Components.DictionaryAdapter"
    dependency "castle.components.pagination"           >> "1.1" >> "Castle.Components.Pagination"

exclude:
  library "Rhino.Mocks"
  library "nunit.framework"

package.category = "Web"
package.description = "A view engine for ASP.NET MVC."
package.homepage = "http://sparkviewengine.com/"
package.name = "Spark"
package.notes = ""