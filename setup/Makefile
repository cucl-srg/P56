CXX = g++
CXXFLAGS = -O2

makeself: makeself.cc
	$(CXX) $(CXXFLAGS) -o $@ $^

mystery3: mystery3.cc
	$(CXX) $(CXXFLAGS) -o $@ $^ -lrt

client4: client4.cc dclab_log.cc dclab_rpc.cc kutrace_lib.cc
	$(CXX) $(CXXFLAGS) -o $@ $^ -pthread

server4: server4.cc dclab_log.cc dclab_rpc.cc kutrace_lib.cc spinlock.cc
	$(CXX) $(CXXFLAGS) -o $@ $^ -pthread

dumplogfile4: dumplogfile4.cc dclab_log.cc
	$(CXX) $(CXXFLAGS) -o $@ $^

processlog4: dumplogfile4 makeself
	./dumplogfile4 "$(if $(TITLE),$(TITLE),Untitled)" "$(LOGFILE)" > $(LOGFILE:.log=.json)
	cat $(LOGFILE:.log=.json) | ./makeself show_rpc.html > $(LOGFILE:.log=.html)
