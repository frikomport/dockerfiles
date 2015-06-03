# Dockerized Ant

Wraps Apache Ant 1.9.4 into a container that can be run as a command line tool, i.e.:

	docker run -v $PWD:/code frikomport/ant

It contains the volume `/code` that needs to be mapped to a project containing a `build.xml`.
It also supports normal Ant parameters, e.g.:

	docker run -v $PWD:/code frikomport/ant test