const server = Bun.serve({
    routes: {
        "/public/*": { dir: "./public" },

        "/": Bun.file("./index.html")
    }
});

console.log(`Server running at ${server.url}`);