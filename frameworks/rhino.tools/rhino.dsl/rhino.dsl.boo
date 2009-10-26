install rhino.dsl:
    get_from git("git://github.com/ayende/rhino-dsl.git")
    build_with psake, buildfile("psake.ps1"), FrameworkVersion35

    build_root_dir "build"
    shared_library "SharedLibs"

dependencies:
    depend "castle.tools"   >> "Boo.Lang"
    depend "castle.tools"   >> "Boo.Lang.CodeDom"
    depend "castle.tools"   >> "Boo.Lang.Compiler"
    depend "castle.tools"   >> "Boo.Lang.dll"
    depend "castle.tools"   >> "Boo.Lang.Extensions"
    depend "castle.tools"   >> "Boo.Lang.Interpreter"
    depend "castle.tools"   >> "Boo.Lang.Parser"
    depend "castle.tools"   >> "Boo.Lang.PatternMatching"
    depend "castle.tools"   >> "Boo.Lang.Useful"

package.category = "Frameworks"
package.description = "DSL Library for Boo"
package.forum = "http://groups.google.co.uk/group/rhino-tools-dev?hl=en"
package.homepage = "http://ayende.com/blog/"
package.name = "Rhino.Dsl"
package.notes = ""