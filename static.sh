#!/bin/bash

cd npm

echo "starting to setup an NPM static-webpage project"

cp static/index.html ../index.html
cp static/index.mjs ../index.mjs
cp static/index.css ../index.css

cp template.gitignore ../.gitignore
cp .prettierrc.json ../prettierrc.json
cp package.json.template ../package.json

cd ..
touch README.md
npm init

git submodule add https://github.com/jauntyjocularjay/kwikgit.git git
git submodule add https://github.com/jauntyjocularjay/vanillajscomponents.git vjsc

echo "Have your github email address ready and press enter"

bash git/gitBranches

echo "enter 'npmcommands' to finish the process"

bash git/gitDSubmodule

npm i

echo "and we are done! Happy coding!"

