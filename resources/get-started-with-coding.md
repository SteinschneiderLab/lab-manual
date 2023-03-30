# Directory Organization and Virtual Environments

## How to organize your directories

There is no right answer to this. But as a starting point, I would suggest the following organization on your computer. Create a directory called "Projects". This is where all of your projects will live. 

Inside Projects, I would then create an Archive folder for past projects, and then a separate folder for each active project:

Projects
* Archive
* ActiveProject1
* ActiveProject2
* ...

Within each active project, you often want a few clearly marked folders to organize your data, code, and other documentation, using common folder names across projects so it becomes easy (and second nature) to navigate your directory structure:

ActiveProject1
* doc - text documents associated with the project, such as files for manuscripts, additional documentation for source code, and notes documenting your experiments
* data - put the raw data here. organize in subdirectories as needed.
* results - files generaed during cleanup and analysis. You'll often want multiple subdirectories to organize intermediary files like cleaned data, simulation results, and figures
* src - put source code for your project here. you probably want a subdirectory system that stores source code files used in the core analysis in one place, and in a separate location, include a driver script (e.g., runall.py) that contains all analysis steps from start to finish

Be sure to name all files in a way that clearly reflects their content or function. 

## What is a virtual environment?

In Python, a virtual environment helps to keep dependencies required by different projects separate, by creating isolated python virtual environments for each of them. Its like creating a remote island for each project that contains exactly the right version of python and associated external packages needed for that project. 

This is important, because sometimes one project will need one version of an external package, while another project will need another version of the same package. You can't install two different versions of the same package to the base installation of Python, so you would have to choose one. This would then disrupt one of your two projects. Virtual environments solve this problem. 

Also, if you create a virtual environment with the specific versions of python and all external packages needed for your project, its then very easy to export those dependencies and communicate them to others. This will make it much easier for collaborators and other scientists to run your code. 

Using virtual environments is considered best practice for Python, and so I strongly suggest you start using virtual environments right away. However, the use of separate environments for indiviudal projects is not just for Python users. If you are coding in R, it is also helpful to follow this approach. The next section provides some instructions on how to do this in either Python or R using Anaconda. 
 
## Getting started in Python or R with virtual enviromnents

### Anaconda

I think the easiest way to get started in your coding with good environment management is to use Anaconda. I personally prefer this approach, and if you are not sure where to start, then start with Anaconda. You can use these videos [here](https://www.youtube.com/watch?v=23aQdrS58e0&feature=youtu.be) and [here](https://www.youtube.com/watch?v=AEFVbCcYVTY&feature=youtu.be) to help you get started with Anaconda installation, using Conda in command-line to help build and manage separate environments for your different projects, or using [Anaconda-Navigator](https://docs.anaconda.com/navigator/index.html) (a nice GUI for Anaconda) to do the same things. Note that the first video suggests installing Miniconda, but I would recommend Anaconda (which comes with Anaconda Navigator). 

If you are also interested in using Anaconda for environment management in R, follow the instructions [here](https://docs.anaconda.com/navigator/tutorials/create-r-environment/) to install R, RStudio, and R packages through Anaconda.

Once you've created an environment, you can manage that environment (e.g., add new packages, remove old ones, export the environment for others to use) using Conda. See [here](https://conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html) for more instructions on these different management actions.  

I personally like to use specific IDEs (Spyder, RStudio) to actually develop my code. However, if you want to use an IDE in a virtual environment without re-installing the IDE for each environment (which would take up lots of memory as the number of environments grow), you need another strategy. A solution can be found [here](https://github.com/spyder-ide/spyder/wiki/Working-with-packages-and-environments-in-Spyder). 

### Other options for virtual environments

In Python, there is another way to set up virtual environments, explained [here](https://www.youtube.com/watch?v=28eLP22SMTA&t=572s). It will show you how to do a custom install of Python and set up a virtual environment (on a Windows machine) using *venv*. However, if you use Anaconda and Conda, you don't need to do this. However, others you collaborate with might take this approach, so its useful to be aware of it. If you are a little confused, a good overview of these different options (and virutal environments in general) can be found [here](https://realpython.com/python-virtual-environments-a-primer/#what-other-popular-options-exist-aside-from-venv).

Similarly, in R, there are also other tools to create project environments without Anaconda. For example, see [here](https://posit.co/blog/renv-project-environments-for-r/). Again, if you use Anaconda and Conda, you don't need to do this, but its useful to be aware of. 
