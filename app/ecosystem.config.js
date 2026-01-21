module.exports = {
    apps: [
        {
            name: "poc4-aws-express-app",
            script: "index.js",
            instances: "max",
            exce_mode: "cluster",
            env: {
                PORT: 8080
            }
        }
    ]
}