const fs = require("fs")
const path = require("path")
const process = require("process")

const indexHtml = fs.readFileSync(
  path.join(__dirname, "../public/index.html"),
  "utf8"
)

const globalStyle = "background-color:green;"

const classNameStyle = "background-color:yellow;"

if (indexHtml.includes(globalStyle) && indexHtml.includes(classNameStyle)) {
  console.log("Test passed")
} else {
  console.log("Test failed")
  process.exit(1)
}
