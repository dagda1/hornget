install mspec:
    get_from git("git://github.com/machine/machine.specifications.git")
    build_with rake, buildfile("rakefile"), FrameworkVersion35		

    shared_library "Libraries"
    build_root_dir "Build"

package.category = "Testing"
package.description = "A RSpec-like BDD framework for .NET"
package.homepage = "http://github.com/machine/machine.specifications"
package.name = "Machine.Specifications"
package.notes = ""
package.version = "0.2.0.0"