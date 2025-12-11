#!/bin/bash

# 用法: ./md2html.sh input.md output.html

if [ $# -ne 2 ]; then
  echo "用法: $0 输入文件.md 输出文件.html"
  exit 1
fi

pandoc "$1" -f markdown-yaml_metadata_block -o "$2" --css=style.css -s --mathjax=https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js