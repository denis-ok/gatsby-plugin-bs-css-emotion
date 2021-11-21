import React from "react"
import { renderToString } from "react-dom/server"
import { extractCritical } from "@emotion/server"

export { wrapRootElement } from "./wrapRootElement.js"

export const replaceRenderer = ({
  bodyComponent,
  replaceBodyHTMLString,
  setHeadComponents,
}) => {
  const { html, css, ids } = extractCritical(renderToString(bodyComponent))

  setHeadComponents([
    <style
      data-emotion-css={ids.join(` `)}
      dangerouslySetInnerHTML={{ __html: css }}
    />,
  ])

  replaceBodyHTMLString(html)
}
