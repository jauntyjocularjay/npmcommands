#!/bin/bash

echo -r "starting to setup an NPM project"

cp index.html ../index.html
cp index.mjs ../index.mjs
cp template.gitignore ../.gitignore

cd ..
touch README.md
npm init

git submodule add https://github.com/jauntyjocularjay/kwikgit.git sh
git submodule add https://github.com/jauntyjocularjay/PhaserHelpers.git phaserhelpers

bash sh/gitBranches.sh

echo "enter 'npmcommands' to finish the process"

bash sh/gitDSubmodule.sh

echo "and we are done! Happy coding!"
