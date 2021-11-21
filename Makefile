.PHONY: clean build publish format
.PHONY: clean-test test

NODE_BINS = node_modules/.bin
DIST_DIR = .
TEST_FILES_DIR = test
TEST_PLUGIN_DIR = plugins/gatsby-plugin-bs-css-emotion-test

clean:
	rm -rf $(DIST_DIR)/gatsby-browser.js
	rm -rf $(DIST_DIR)/gatsby-ssr.js
	rm -rf $(DIST_DIR)/wrapRootElement.js

build: clean
	$(NODE_BINS)/babel src --out-dir $(DIST_DIR)

publish: build
	npm publish

format:
	$(NODE_BINS)/prettier --write ./src ./test

clean-test:
	rm -rf .cache
	rm -rf public
	rm -rf $(TEST_PLUGIN_DIR)
	rm -rf ./gatsby-config.js
	rm -rf ./gatsby-node.js

test: clean-test build
	mkdir -p $(TEST_PLUGIN_DIR)
	cp $(TEST_FILES_DIR)/package.json $(TEST_PLUGIN_DIR)
	cp $(TEST_FILES_DIR)/gatsby-config.js .
	cp $(TEST_FILES_DIR)/gatsby-node.js .
	mv $(DIST_DIR)/gatsby-browser.js $(TEST_PLUGIN_DIR)
	mv $(DIST_DIR)/gatsby-ssr.js $(TEST_PLUGIN_DIR)
	mv $(DIST_DIR)/wrapRootElement.js $(TEST_PLUGIN_DIR)
	$(NODE_BINS)/gatsby build
	node ./test/test.js
