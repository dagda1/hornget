install solrnet:
	get_from svn("http://solrnet.googlecode.com/svn/trunk/")
	build_with batch, buildfile("build.bat"), FrameworkVersion35
	
	build_root_dir "merged"
	shared_library "lib"
	
dependencies:
	dependency "castle.core"         >> "1.2" >> "Castle.Core"
    dependency "castle.windsor"		 >> "2.1" >> "Castle.MicroKernel"
    dependency "castle.windsor"		 >> "2.1" >> "Castle.Windsor"
    dependency "castle.dynamicproxy" >> "2.2" >> "Castle.DynamicProxy2"
	dependency "nhibernate" 		 >> "2.1" >> "NHibernate"
	dependency "nhibernate" 		 >> "2.1" >> "log4net"
	dependency "ninject"    		 >> "2.0" >> "ninject"
	
package.category = "search"
package.description = "A Solr client for .Net"
package.homepage = "http://code.google.com/p/solrnet/"
package.name = "SolrNet"
package.notes = ""