#!/usr/bin/env python

from setuptools import (
    setup,
    find_packages,
    dist,
)

build_requires = [package for package,version in
                  [line.split ("==") for line in
                   open("requirements.txt").read().split("\n") if line]]

# Define package version
version = open("version.txt").read().rstrip()

setup(

    name="attention",
    version=version,
    description="Oreilly attention tutorial.",
    #url="http://",
    author="Goku Mohandas",
    author_email="gokumd@gmail.com",

    long_description="Oreilly attention tutorial.",

    packages=find_packages(),
    #setup_requires = build_requires,
    #install_requires = build_requires,
)