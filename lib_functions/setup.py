from setuptools import setup, find_packages

setup(
    name="lib_functions",
    version="0.1.0",
    description="libfunctions for HLStrans",
    author="AIforChip",
    packages=find_packages(),      # finds any Python packages under this directory
    install_requires=[             # list runtime dependencies here, e.g.:
        # "numpy>=1.20",
    ],
)
