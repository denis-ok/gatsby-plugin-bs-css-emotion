.PHONY: clean build publish

NODE_BINS = node_modules/.bin

clean:
	rm -rf gatsby-browser.js
	rm -rf gatsby-ssr.js
	rm -rf wrapRootElement.js

build: clean
	$(NODE_BINS)/babel src --out-dir .

publish: build
	npm publish
	make clean

format:
	$(NODE_BINS)/prettier --write ./src
