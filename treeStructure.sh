#!/bin/bash

mkdir -p public/{style/,js/,page/,assets/{image/,fonts/,video/,music/}}
mkdir -p src/sass/modules
touch index.html public/style/app.css public/js/main.js src/sass/app.sass src/sass/_variables.sass src/sass/_fonts.sass src/sass/modules/_body.sass src/sass/modules/_header.sass src/sass/modules/_footer.sass src/sass/modules/_main.sass
npm init
npm install @fortawesome/fontawesome-free

# index.html
cat <<HTML_EOF > index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./public/style/app.css">
    <link rel="stylesheet" href="./node_modules/@fortawesome/fontawesome-free/css/all.css">

</head>
<body>

    <script src="./public/js/main.js"></script>
</body>
</html>
HTML_EOF

# app.sass
cat <<SASS_EOF > src/sass/app.sass
// VARIABLES
@import ./_variables.sass

// FONTS
@import ./_fonts.sass

// SASS
@import ./modules/_body.sass
@import ./modules/_header.sass
@import ./modules/_main.sass
@import ./modules/_footer.sass
SASS_EOF

# _variables.sass
cat <<SASS_EOF > src/sass/_variables.sass
// VARIABLES
// BODY


// HEADER


// MAIN


// FOOTER
SASS_EOF

# _fonts.sass
cat <<SASS_EOF > src/sass/_fonts.sass
/* FONTS */

@font-face
    font-family: ""
    src: url("../assets/fonts/")
SASS_EOF

# _body.sass
cat <<SASS_EOF > src/sass/modules/_body.sass
/* BODY */

body
    margin: 0
    padding: 0
    background-color: #FFFFFF
    font-family: Arial, Helvetica, sans-serif
SASS_EOF

# _header.sass
cat <<SASS_EOF > src/sass/modules/_header.sass
/* HEADER */


/* RESPONSIVE */
@media (max-width: 576px)


@media (min-width: 577px) and (max-width: 768px)


@media (min-width: 769px) and (max-width: 1024px)


@media (min-width: 1025px)
SASS_EOF

# _main.sass
cat <<SASS_EOF > src/sass/modules/_main.sass
/* MAIN */


/* RESPONSIVE */
@media (max-width: 576px)


@media (min-width: 577px) and (max-width: 768px)


@media (min-width: 769px) and (max-width: 1024px)


@media (min-width: 1025px)
SASS_EOF


# _footer.sass
cat <<SASS_EOF > src/sass/modules/_footer.sass
/* FOOTER */


/* RESPONSIVE */
@media (max-width: 576px)


@media (min-width: 577px) and (max-width: 768px)


@media (min-width: 769px) and (max-width: 1024px)


@media (min-width: 1025px)
SASS_EOF

tree -d

echo
echo "###################################"
echo "#                                 #"
echo "#      TREE STRUCTURE HAS         #"
echo "#         BEEN CREATED!           #" 
echo "#                                 #"
echo "###################################"
echo

sass --watch src/sass/app.sass public/style/app.css
