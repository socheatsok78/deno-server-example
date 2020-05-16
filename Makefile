DENO ?= deno
DENO_PERMISSIONS ?= --allow-net

SERVER_INDEX = src/server.ts

server:
	@echo "Starting up..."
	@${DENO} ${DENO_PERMISSIONS} ${SERVER_INDEX}
