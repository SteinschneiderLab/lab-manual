#### Installing Git 
The easiest way to install git on a the Mac OS is using the Homebrew installer. If you don't have this yet, the official Homebrew site is [here](https://brew.sh/). Once you have Homebrew installed, git is installed
with the simple command below:  
  
`$ brew install git`  
#### Recent issues with Mac OS, Homebrew, and Git
You can have issues with your git and homebrew installs if they are not regularly updated with the Mac OS upgrades. This can create some really odd error messages when attempting to run git that sometimes refer to 
problems with 'xcode' and a whole other litany of error messages. Keeping homebrew and git updated with the latest version can help (e.g. `brew update` and `git update`). However, if you are still having issues, one solution that works (amongst many that did not on the Google) is a complete uninstall of Homebrew via the instructions [here](https://mac.install.guide/homebrew/5.html) with the following code:
  
`$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)"`  
  
Be aware that this will likely remove any downloaded executables you have for your Mac terminal and require you to reinstall them!
  
You will then need to do the full reinstall of Homebrew from the site instructions [here](https://brew.sh/) via the code below (check the homebrew site for updates to this code if not working): 
  
`$ /bin/bash -c "$(curl -fsSLhttps://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`  
  
Finally, you can reinstall git and anything else that was removed via the typical `brew install my.package` command, for git:  
  
`$ brew install git`
