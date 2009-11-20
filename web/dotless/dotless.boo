install dotless:

    get_from git("git://github.com/chrisjowen/nLess.git")
    build_with batch, buildfile("./ClickToBuild.bat"), FrameworkVersion35

    build_root_dir "build"

package.category = "Web"
package.description = ".less (pronounced dot-less) is a .NET port of the funky ruby LESS libary"
package.homepage = "http://dotlesscss.com"
package.name = "dotless"
package.notes = ""
