# -*- coding: utf-8 -*-
from setuptools import setup, find_packages

# https://pythonhosted.org/setuptools/setuptools.html#building-and-distributing-packages-with-setuptools
# http://blog.dokenzy.com/archives/986
# http://stackoverflow.com/questions/7522250/how-to-include-package-data-with-setuptools-distribute

setup(
    name="xing-plus",
    version="1.0.0",
    license="MIT License",
    author="sculove",
    author_email="sculove@gmail.com",
    url="https://github.com/sculove/xing-plus",
    keywords=["xing","stock","systemtrading"],
    platform="win32",
    description="more easy eBEST INVESTMENT API",
    long_description="xing plus supports more easy api for eBEST INVESTMENT",
    classifiers=[
        "Environment :: Win32 (MS Windows)",
        "License :: OSI Approved :: MIT License",
        "Programming Language :: Python",
        "Programming Language :: Python :: 3"
    ],
    packages=find_packages(),
    package_data={"": ["*.res"]},
    install_requires=["pandas>=0.17.0", "ta-lib>=0.4.9"]
)