JS = js
BINJS_ENCODE = binjs_encode --inject-lazy 3

encode:
	$(BINJS_ENCODE) --in benches/test/*.js -o benches/test/out
	$(BINJS_ENCODE) --in benches/react/*.js -o benches/react/out
	$(BINJS_ENCODE) --in benches/d3/*.js -o benches/d3/out
	$(BINJS_ENCODE) --in benches/angular/*.js -o benches/angular/out
	$(BINJS_ENCODE) --in benches/babel/*.js -o benches/babel/out
	$(BINJS_ENCODE) --in benches/backbone/*.js -o benches/backbone/out
	$(BINJS_ENCODE) --in benches/wabtjs/*.js -o benches/wabtjs/out
	$(BINJS_ENCODE) --in benches/fuzzball/*.js -o benches/fuzzball/out

test:
	$(JS) test.js benches/test/out/*.js
	$(JS) test.js benches/react/out/*.js
	$(JS) test.js benches/d3/out/*.js
	$(JS) test.js benches/angular/out/*.js
	$(JS) test.js benches/babel/out/*.js
	$(JS) test.js benches/backbone/out/*.js
	$(JS) test.js benches/wabtjs/out/*.js
	$(JS) test.js benches/fuzzball/out/*.js
