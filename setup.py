from setuptools import setup, find_packages

setup(
    name='shufflemilky',
    version='0.1.0',
    author='Samuel Freitas',
    author_email='samuelfreitas@linuxmail.org',
    packages=find_packages(exclude=['tests', '__pycache__']),
    platforms='unix',
    url='http://pypi.python.org/pypi/shufflemilky/',
    license='MIT',
    description='A simple shuffle player wiritten in python.',
    long_description=open('README.md').read(),
    entry_points={
        'console_scripts': ['shufflemilky = shufflemilky.shufflemilky:main']
    },
    install_requires=[
        'python-vlc',
    ],
)
