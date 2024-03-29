#!/usr/bin/env bash

JAVA_OPTS="-javaagent:dd-java-agent.jar -XX:FlightRecorderOptions=stackdepth=256 -Ddd.service=cloudcare-backend -Ddd.env=prod -Ddd.version=v1.6.0 -Ddd.profiling.enabled=true -Ddd.profiling.allocation.enabled=true -Ddd.profiling.ddprof.cpu.enabled=true -Ddd.profiling.ddprof.wall.enabled=true -Ddd.profiling.ddprof.alloc.enabled=true -Ddd.profiling.ddprof.liveheap.enabled=true -Ddd.profiling.ddprof.memleak.enabled=true -Ddd.agent.host=127.0.0.1 -Ddd.trace.agent.port=9529" ./build/install/java-profiling-demo/bin/java-profiling-demo
