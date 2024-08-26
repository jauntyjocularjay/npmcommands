#!/bin/bash

echo "starting to setup an NPM typescript project with Jest testing"

cp typescript/index.ts ../index.ts
cp typescript/.babelrc ../.babelrc
cp typescript/jest.config.json ../jest.config.json
cp typescript/tsconfig.json ../tsconfig.json

cp .prettierrc.json ../prettierrc.json
cp template.gitignore ../.gitignore
cp package.json.template ../package.json

touch ../README.md

cd ..

npm init

git submodule add https://github.com/jauntyjocularjay/kwikgit.git git

echo "Have your github email address ready and press enter"

bash sh/gitBranches

echo "enter 'npmcommands' to finish the process"

bash sh/gitDSubmodule

npm i

echo "and we are done! Happy coding!"