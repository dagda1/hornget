install magnum:
    get_from svn("http://magnum.googlecode.com/svn/trunk")
    build_with batch, buildfile("build.bat"), FrameworkVersion35


    shared_library "lib"
    build_root_dir "build_output"

package.category = "Frameworks"
package.description = "For the larger than average developer"
package.homepage = "http://code.google.com/p/magnum/"
package.name = "Magnum"
package.notes = ""
