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

A virtual environment helps to keep dependencies required by different projects separate, by creating isolated python virtual environments for each of them. Its like creating a remote island for each project that contains exactly the right version of python and associated external packages needed for that project. 

This is important, because sometimes one project will need one version of an external package, while another project will need another version of the same package. You can't install two different versions of the same package to the base installation of Python, so you would have to choose one. This would then disrupt one of your two projects. Virtual environments solve this problem. 

Also, if you create a virtual environment with the specific versions of python and all external packages needed for your project, its then very easy to export those dependencies and communicate them to others. This will make it much easier for collaborators and other scientists to run your code. 

 
## Installing Python and setting up a virtual enviromnent

I would suggest watching this [video](https://www.youtube.com/watch?v=28eLP22SMTA&t=572s) **before** installing Python. It will show you how to do a custom install of Python and set up a virtual environment. The video is designed for a Windows machine, but worth watching regardless of your operating system. Also, similar instructions for setting up virtual environments on Mac can be found online.

If you then want to develop Python code in this virtual environment using your favorite Python IDE (integrated development environment), such as Spyder, you can follow these [instructions](https://medium.com/@apremgeorge/using-conda-python-environments-with-spyder-ide-and-jupyter-notebooks-in-windows-4e0a905aaac5). 

You may also choose to use conda to set up and manage virtual environments (see [here](https://subscription.packtpub.com/book/big-data-and-business-intelligence/9781788291460/1/ch01lvl1sec13/creating-a-virtual-environment-for-development-with-conda)). You'll want to install [Anaconda](https://www.anaconda.com/), which will come with a bunch of data science packages, along with conda. If you would prefer a GUI, you can use [Anaconda-Navigator](https://docs.anaconda.com/navigator/index.html).

If you are a little confused, a good overview of these different options (and virutal environments in general) can be found [here](https://realpython.com/python-virtual-environments-a-primer/#what-other-popular-options-exist-aside-from-venv).
 
