const path = require(`path`)

exports.createPages = ({ actions: { createPage } }) => {
  createPage({
    path: "/",
    component: path.join(__dirname, "test/index.js"),
  })
}
