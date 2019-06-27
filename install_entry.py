import shutil
import subprocess
from setuptools.command.install import install
import os
from os.path import expanduser


class InstallEntry(install):
    """Customized setuptools install command - runs the shell script"""

    def run(self):
        curr = (os.getcwd())
        os.system('chmod +x ' + curr + '/script.sh')
        home = expanduser("~")
        shutil.copyfile(curr + "/.vocab", home + "/.vocab")
        os.system('chmod +x ' + curr + '/.vocab')
        shutil.copyfile(curr + "/.vocab-german", home + "/.vocab-german")
        os.system('chmod +x ' + curr + '/.vocab-german')
        shutil.copyfile(curr + "/.vocab-script", home + "/.vocab-script.sh")
        os.system('chmod +x ' + curr + '/.vocab-script')
        subprocess.call(['./script.sh'])
        install.run(self)
