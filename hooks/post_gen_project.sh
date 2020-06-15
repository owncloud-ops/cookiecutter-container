#!/usr/bin/env sh

if hash git 2>/dev/null; then
    git init
    git remote add origin ssh://git@{{ cookiecutter.git_server }}/{{ cookiecutter.git_org }}/{{ cookiecutter.image_name }}.git
fi
