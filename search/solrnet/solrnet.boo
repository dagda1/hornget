install solrnet:
	get_from svn("http://solrnet.googlecode.com/svn/trunk/")
	build_with batch, buildfile("build.bat"), FrameworkVersion35
	
	build_root_dir "merged"
	shared_library "lib"
	
dependencies:
	depend "castle.windsor"		 >> "Castle.Core"
	depend "castle.windsor"		 >> "Castle.MicroKernel"
	depend "castle.windsor"		 >> "Castle.Windsor"
	depend "castle.windsor"		 >> "Castle.DynamicProxy2"
	depend "nhibernate" 	>> "2.1" >> "NHibernate"
	depend "nhibernate" 	>> "2.1" >> "log4net"
	depend "ninject"    	>> "2.0" >> "ninject"
	
package.category = "search"
package.description = "A Solr client for .Net"
package.homepage = "http://code.google.com/p/solrnet/"
package.name = "SolrNet"
package.notes = ""