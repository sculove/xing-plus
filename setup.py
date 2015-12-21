from setuptools import setup, find_packages

setup(
    name="xing-plus",
    version="0.0.5",
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