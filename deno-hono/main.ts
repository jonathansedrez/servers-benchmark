import { Hono } from "hono";
const myUUID = crypto.randomUUID();

const app = new Hono();

app.get("/", (c) => {
  return c.text(`Random UUID ${myUUID}`);
});

Deno.serve(app.fetch);
