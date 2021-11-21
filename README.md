# gatsby-plugin-bs-css-emotion

### Gatsby plugin to use bs-css-emotion with ReScript or Reason/Bucklescript.

This plugin enables extracting critical styles when you use Gatsby with Emotion 11 and components with `className` prop.
The usage of `className` prop is the only option when you use Rescript/Reason/Bucklescript with `bs-css-emotion` bindings.

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
