﻿install automapper:
    get_from svn("http://automapperhome.googlecode.com/svn/trunk/")
    build_with nant, buildfile("AutoMapper.build"), FrameworkVersion35

    with:
        tasks full

    build_root_dir "release"
    shared_library "lib"

exclude:
  library "Rhino.Mocks"

package.category = "Mappers"
package.description = "A convention-based object-object mapper in .NET."
package.forum = "http://groups.google.com/group/automapper-users"
package.homepage = "http://www.codeplex.com/AutoMapper/"
package.name = "AutoMapper"
package.notes = ""
