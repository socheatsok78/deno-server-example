DENO ?= deno
DENO_PERMISSIONS ?= --allow-net

SERVER_INDEX ?= src/server.ts

BUNDLE_OUTPUT_PATH = dist
BUNDLE_OUTPUT_FILE = server.js

server:
	@echo "Starting up..."
	@${DENO} ${DENO_PERMISSIONS} ${SERVER_INDEX}

bundle:
	@echo "Bundling application..."
	@mkdir -p ${BUNDLE_OUTPUT_PATH}
	@${DENO} bundle ${SERVER_INDEX} ${BUNDLE_OUTPUT_PATH}/${BUNDLE_OUTPUT_FILE}

bundle-run:
	@echo "Starting up bundle..."
	@@${DENO} ${BUNDLE_OUTPUT_PATH}/${BUNDLE_OUTPUT_FILE}
