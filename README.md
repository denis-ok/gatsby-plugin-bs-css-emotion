# gatsby-plugin-bs-css-emotion

### Gatsby plugin to use bs-css-emotion with ReScript or Reason/Bucklescript.

This plugin enables extracting critical styles when you use Gatsby with Emotion v11+ (`@emotion/css`) and components with `className` prop.

The official `gatsby-plugin-emotion` unfortunately extracts only styles added with `@emotion/react` and `css` prop.

The usage of `className` prop is the only option when you use Rescript/Reason/Bucklescript with `bs-css-emotion` bindings that use `@emotion/css` under the hood.

## Install

```
npm install gatsby-plugin-bs-css-emotion
```

Add `gatsby-plugin-bs-css-emotion` to your `gatsby-config.js`:

```js
{
  plugins: [
    `gatsby-plugin-bs-css-emotion`,
    // your plugins...
  ]
}
```
