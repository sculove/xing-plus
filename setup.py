from setuptools import setup

setup(
    name="xing-plus",
    version="0.0.1",
    license="MIT License",
    author="sculove",
    author_email="sculove@gmail.com",
    keywords=["xing","stock","systemtrading"],
    url="https://github.com/sculove/xing-plus",  # 관련 홈페이지
    description="support more easy xing api for eBEST INVESTMENT",
    classifiers=[
        'Development Status :: 1 - Alpha',
        'Intended Audience :: Developers',
        'License :: OSI Approved :: MIT License',
        'Programming Language :: Python',
        'Programming Language :: Python :: 3'
    ],
    install_requires=["pythoncom", "pandas", "talib"],  # 필요로 하는 패키지
    packages=["xing", "com"]
)