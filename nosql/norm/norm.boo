install fluentnhibernate:
  get_from git("git://github.com/atheken/NoRM.git")

  build_with msbuild, buildfile("NoRM.sln"), FrameworkVersion35

  shared_library "Libraries"
  build_root_dir "build"
  
exclude:
  library "xunit"
  
package.category = "NoSQL"
package.description = "NoRM is a MongoDB driver for .Net designed to provide access to strongly/statically-typed documents and collections"
package.forum = "http://groups.google.com/group/norm-mongodb"
package.homepage = "http://github.com/atheken/NoRM"
package.name = "NoRM"
package.notes = ""