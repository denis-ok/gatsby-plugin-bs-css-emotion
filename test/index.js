import React from "react"
import { css, injectGlobal } from "@emotion/css"

injectGlobal`
  * {
    background-color: green;
  }
  `

const TestComponent = () => {
  return (
    <div
      id="TestComponent"
      className={css`
        background-color: yellow;
      `}
    >
      TestComponent
    </div>
  )
}

export default TestComponent
