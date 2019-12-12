#! bash

echo 'creating folders'
mkdir public src src/js src/scss

echo 'creating files'
touch src/js/index.js src/scss/main.scss public/index.html gulpfile.js webpack.config.js .eslintrc

echo 'initialising npm'
npm init -y

echo 'install dev dependencies'
npm i \
@babel/core \
@babel/preset-env \
autoprefixer \
babel-loader \
browser-sync \
cssnano \
eslint \
eslint-config-airbnb \
eslint-plugin-import \
gulp \
gulp-plumber \
gulp-postcss \
gulp-sass \
gulp-sourcemaps \
webpack-stream \
-D

echo 'initialising git'
git init

echo 'creating gitignore and readme'
echo 'node_modules' > .gitignore
echo '# Static Template' > README.md

echo 'open in vscode'
code .