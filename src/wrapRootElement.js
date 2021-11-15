import React from "react"
import { CacheProvider } from '@emotion/react'
import { cache } from '@emotion/css'

export const wrapRootElement = ({ element }) => {
  return <CacheProvider value={cache}>{element}</CacheProvider>
}
