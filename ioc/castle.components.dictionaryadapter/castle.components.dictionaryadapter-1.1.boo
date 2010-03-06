install castle.core:
    get_from git("git://github.com/castleproject/Castle.Components.DictionaryAdapter.git", "1-1-stable")
    build_with nant, buildfile("default.build"), FrameworkVersion35

    switches:
        parameters "sign=true","common.testrunner.enabled=false", "common.silverlight=false"

    shared_library "lib"
    build_root_dir "build"

    mode debug:
        switches:
            parameters "project.config=debug", "sign=true","common.testrunner.enabled=false", "common.silverlight=false"

    mode release:
         switches:
            parameters "project.config=release", "sign=true","common.testrunner.enabled=false", "common.silverlight=false"
                        
    mode aptca:
         switches:
            parameters "project.config=aptca", "sign=true","common.testrunner.enabled=false", "common.silverlight=false"

exclude:
    library "Rhino.Mocks"
    library "nunit.framework"
    
package.category = "IoC"
package.description = ""
package.forum = "http://groups.google.com/group/castle-project-users"
package.homepage = "http://www.castleproject.org/"
package.name = "Castle.Components.Binder"
package.notes = ""