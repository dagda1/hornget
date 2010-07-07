install nlog:
    get_from git("git://github.com/jkowalski/NLog.git")
    build_with msbuild, buildfile("src/NLog.netfx35.sln"), FrameworkVersion35

	switches:
        parameters "/P:Configuration=Release"
		
	with:
        tasks clean, build
		
	build_root_dir "build"

package.category = "Loggers"
package.description = "NLog is a tool to help the programmer output log statements to a variety of output targets"
package.forum = "http://mail-archives.apache.org/mod_mbox/logging-log4net-user/"
package.homepage = "http://logging.apache.org/log4net/index.html"
package.name = "NLog"
package.notes = ""
