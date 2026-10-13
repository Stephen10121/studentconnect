const server = Bun.serve({
    routes: {
        "/": Bun.file("./index.html")
    }
});

console.log(`Server running at ${server.url}`);