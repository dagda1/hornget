install caliburn:
    get_from svn("https://caliburn.svn.codeplex.com/svn/trunk")
    build_with batch, buildfile("build-release.cmd"), FrameworkVersion35	

    shared_library "lib/net-3.5"
    build_root_dir "bin/net-3.5/release"

dependencies:
    depend "castle.windsor"   >> "Castle.Core"
    depend "castle.windsor"   >> "Castle.DynamicProxy2"
    depend "castle.windsor" >> "Castle.MicroKernel"
    depend "castle.windsor" >> "Castle.Windsor"

package.category = "WPF"
package.description = "Designed to aid in the development of WPF and Silverlight applications, Caliburn implements a variety of UI patterns for solving real-world problems. Patterns that are enabled by the framework include MVC, MVP, Presentation Model (MVVM), Commands and Application Controller."
package.forum = "http://caliburn.codeplex.com/Thread/List.aspx"
package.homepage = "http://caliburn.codeplex.com/"
package.name = "Caliburn"
package.notes = ""
