# What is a Virtual Environment?

A virtual environment helps to keep dependencies required by different projects separate, by creating isolated python virtual environments for each of them. Its like creating a remote island for each project that contains exactly the right version of python and associated external packages needed for that project. 

This is important, because sometimes one project will need one version of an external package, while another project will need another version of the same package. You can't install two different versions of the same package to the base installation of Python, so you would have to choose one. This would then disrupt one of your two projects. Virtual environments solve this problem. 

Also, if you create a virtual environment with the exact right versions of python and all external packages needed for your project, its then very easy to export those dependencies and communicate them to others. This will help collaborators and other scientists use the right dependencies to be able to run your code. 

# 
