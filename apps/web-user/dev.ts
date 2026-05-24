const port = process.env.PORT || "3001";
console.log(`🚀 Starting @repo/web-user on port ${port}...`);

Bun.spawn(["next", "dev", "-p", port], {
  stdout: "inherit",
  stderr: "inherit",
  stdin: "inherit",
});
