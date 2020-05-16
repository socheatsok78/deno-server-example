DENO := deno --allow-net

server:
    @echo "Starting up..."
    @${DENO} src/server.ts
