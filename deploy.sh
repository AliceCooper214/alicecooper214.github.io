#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
pnpm run docs:build

# 进入生成的文件夹
cd ./docs/.vitepress/dist

git init
git add -A
git commit -m 'deploy'

git remote add origin https://github.com/AliceCooper214/alicecooper214.github.io.git
git checkout -b gh-pages
git push -f git@github.com:AliceCooper214/alicecooper214.github.io.git gh-pages

cd -