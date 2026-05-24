const port = process.env.PORT || "3000";
console.log(`🚀 Starting @repo/web-admin on port ${port}...`);

Bun.spawn(["next", "dev", "-p", port], {
  stdout: "inherit",
  stderr: "inherit",
  stdin: "inherit",
});
