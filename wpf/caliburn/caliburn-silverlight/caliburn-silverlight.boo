install caliburn:
    get_from svn("https://caliburn.svn.codeplex.com/svn")
    build_with nant, buildfile("default.build"), FrameworkVersion35

    switches:
        parameters "skip.tests=true"

    with:
        tasks clean,release,platformSilverlight30

    shared_library "lib/Silverlight-3.0"
    build_root_dir "bin"

package.category = "Silverlight"
package.description = "Designed to aid in the development of WPF and Silverlight applications, Caliburn implements a variety of UI patterns for solving real-world problems. Patterns that are enabled by the framework include MVC, MVP, Presentation Model (MVVM), Commands and Application Controller."
package.forum = "http://caliburn.codeplex.com/Thread/List.aspx"
package.homepage = "http://caliburn.codeplex.com/"
package.name = "Caliburn"
package.notes = ""
