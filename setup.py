from os import path
import io
from setuptools import setup
from install_entry import InstallEntry

here = path.abspath(path.dirname(__file__))

with io.open(path.join(here, 'README.md'), encoding='utf-8') as f:
    long_description = f.read()

setup(name='sudoCab',
      version='1.0.0',
      description='Want to learn another language every time you use terminal?',
      long_description=long_description,
      url='https://github.com/Abourass/sudoCab.git',
      author='Abourass',
      author_email='abourassa@assetval.com',
      license='MIT',
      packages=['sudoCab'],
      cmdclass={
          'install': InstallEntry,
          'develop': InstallEntry,
      },
      zip_safe=False)
