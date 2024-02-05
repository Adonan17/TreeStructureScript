#!/bin/bash

npm install -D tailwindcss
npx tailwindcss init
rm -rf public/favicon.ico public/logo192.png public/logo512.png public/manifest.json public/robots.txt src/App.test.js src/logo.svg src/reportWebVitals.js src/setupTests.js src/App.css
mkdir -p public/assets/{image/,fonts/,video/,music/}
mkdir -p src/components

cat <<GIT_EOF > .gitignore
# See https://help.github.com/articles/ignoring-files/ for more about ignoring files.

# dependencies
/node_modules
/.pnp
.pnp.js

# testing
/coverage

# production
/build

# misc
.DS_Store
.env.local
.env.development.local
.env.test.local
.env.production.local

npm-debug.log*
debug.log*
yarn-debug.log*
yarn-error.log*
GIT_EOF

cat <<JS_EOF > src/index.js
import React from 'react';
import ReactDOM from 'react-dom/client';
import './index.css';
import App from './App';

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <React.StrictMode>
    <App />
  </React.StrictMode>
);
JS_EOF

cat <<JS_EOF > src/App.js
export default function App() {
  return (
    <h1 className="text-3xl font-bold underline">
      Hello world!
    </h1>
  )
}
JS_EOF

# index.html
cat <<HTML_EOF > ./public/index.html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <link rel="icon" href="%PUBLIC_URL%/favicon.ico" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="theme-color" content="#000000" />
    <meta
      name="description"
      content="Web site created using create-react-app"
    />
    <link rel="apple-touch-icon" href="%PUBLIC_URL%/logo192.png" />
    <link rel="manifest" href="%PUBLIC_URL%/manifest.json" />
    <title>React App</title>
  </head>
  <body>
    <noscript>You need to enable JavaScript to run this app.</noscript>
    <div id="root"></div>
  </body>
</html>
HTML_EOF

cat <<CSS_EOF > src/index.css
@tailwind base;
@tailwind components;
@tailwind utilities;

* {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
  text-decoration: none;
  list-style: none;
  min-width: 0;
}

body {
  background-color: #FFFFFF;
  font-family: Arial, Helvetica, sans-serif;
}
CSS_EOF

cat <<JS_EOF > tailwind.config.js
/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./src/**/*.{js,jsx,ts,tsx}",
  ],
  theme: {
    extend: {},
  },
  plugins: [],
}
JS_EOF

echo
echo "###################################"
echo "#                                 #"
echo "#       REACTJS EST EXECUTE       #"
echo "#                                 #"
echo "###################################"
echo

code .
