import shutil
import subprocess
from setuptools.command.install import install
import os
from os.path import expanduser


class InstallEntry(install):
    """Customized setuptools install command - runs the shell script"""

    def run(self):
        curr = (os.getcwd())
        os.system('chmod +x ' + curr + '/sudoCab/script.sh')
        home = expanduser("~")
        shutil.copyfile(curr + "/sudoCab/.vocab", home + "/.vocab")
        shutil.copyfile(curr + "/sudoCab/.vocabscript", home + "/.vocabscript")
        subprocess.call(['./sudoCab/script.sh'])
        install.run(self)
