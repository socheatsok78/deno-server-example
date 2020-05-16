import { serve } from "https://deno.land/std@0.50.0/http/server.ts";

const _PORT = 8080;
const s = serve({ port: _PORT });
console.log(`http://localhost:${_PORT}/`);

for await (const req of s) {
  req.respond({ body: "Hello World\n" });
}
