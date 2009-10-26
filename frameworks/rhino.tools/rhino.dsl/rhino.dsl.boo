install rhino.dsl:
    get_from git("git://github.com/ayende/rhino-dsl.git")
    build_with psake, buildfile("psake.ps1"), FrameworkVersion35

    build_root_dir "build"
    shared_library "SharedLibs"

dependencies:
    depend "castle.activerecord"   >> "rhino.dsl"
    depend "castle.activerecord"   >> "Boo.Lang.CodeDom"
    depend "castle.activerecord"   >> "Boo.Lang.Compiler"
    depend "castle.activerecord"   >> "Boo.Lang.dll"
    depend "castle.activerecord"   >> "Boo.Lang.Extensions"
    depend "castle.activerecord"   >> "Boo.Lang.Interpreter"
    depend "castle.activerecord"   >> "Boo.Lang.Parser"
    depend "castle.activerecord"   >> "Boo.Lang.PatternMatching"
    depend "castle.activerecord"   >> "Boo.Lang.Useful"

package.category = "Frameworks"
package.description = "DSL Library for Boo"
package.forum = "http://groups.google.co.uk/group/rhino-tools-dev?hl=en"
package.homepage = "http://ayende.com/blog/"
package.name = "Rhino.Dsl"
package.notes = ""