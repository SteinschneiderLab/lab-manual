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

## Getting started in Python 

If you are new to Python, I would suggest installing [PyCharm](https://www.jetbrains.com/pycharm/) as your integrated development environment (IDE) for coding in Python. If you don't have Python already installed on your computer, it will automatically get installed when you install PyCharm and start working on your first project. PyCharm has a lot of nice features, and its worth your time to check out some of the online tutorials that are available for this IDE (e.g., basics are [here](https://www.youtube.com/playlist?list=PL30AETbxgR-dKTR0wBfkQw9mywvkCi3q_)). One nice feature of PyCharm is its very user friendly way to set up new projects with their own virtual environments, described next. 

### Virtual environments in Python

In Python, a virtual environment helps to keep dependencies required by different projects separate, by creating isolated python virtual environments for each of them. Its like creating a remote island for each project that contains exactly the right version of python and associated external packages needed for that project. 

This is important, because sometimes one project will need one version of an external package, while another project will need another version of the same package. You can't install two different versions of the same package to the base installation of Python, so you would have to choose one. This would then disrupt one of your two projects. Virtual environments solve this problem. 

Also, if you create a virtual environment with the specific versions of python and all external packages needed for your project, its then very easy to export those dependencies and communicate them to others. This will make it much easier for collaborators and other scientists to run your code. 

Using virtual environments is considered best practice for Python, and so I strongly suggest you start using virtual environments right away. If you use PyCharm, you can automatically set up a virtual environment for each new project at the time of project set-up (see [here](https://www.youtube.com/watch?v=2P30W3TN4nI&list=PL30AETbxgR-dKTR0wBfkQw9mywvkCi3q_&index=5&t=92s)). 

If you would like a little more background on virtual environments, a good overview can be found [here](https://realpython.com/python-virtual-environments-a-primer/#what-other-popular-options-exist-aside-from-venv).
 
### Options to set up virtual environments outside of PyCharm

If you don't use PyCharm to set up virtual environments, see [here](https://www.youtube.com/watch?v=28eLP22SMTA&t=572s) for a good tutorial for how to set up virtual environments manually.  

[Anaconda](https://www.anaconda.com/) also provides an easy way to code in Python (and other languages) with good virtual environment management. You can use these videos [here](https://www.youtube.com/watch?v=23aQdrS58e0&feature=youtu.be) and [here](https://www.youtube.com/watch?v=AEFVbCcYVTY&feature=youtu.be) to help you get started with this approach. Once you've created an environment, you can manage that environment (e.g., add new packages, remove old ones, export the environment for others to use) using Conda. See [here](https://conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html) for more instructions on these different management actions.  

## Getting started in R

I would strongly suggest using [RStudio](https://posit.co/download/rstudio-desktop/) as your IDE. You will first need to download R, and then RStudio. Links for both installs can be found at the RStudio webpage. 

### Virtual environments in R

The use of separate environments for indiviudal projects is not just for Python users. If you are coding in R, it is also helpful to follow this approach. 

There are tools directly in R to create project environments without Anaconda. For example, see [here](https://posit.co/blog/renv-project-environments-for-r/). 

You can also use Anaconda for environment management in R, following these [instructions](https://docs.anaconda.com/navigator/tutorials/create-r-environment/).

