### README  
This training module (HPC) is intended to introduce and familiarize new students with HPC operations on the local EWRS shared resource, the Hopper Cluster, as of the writing of this document. The basic idea is that this module will build on previous command line and git training modules as prerequisites and be split over a couple 1 hour sessions.  

The first session assumes no previous knowledge of remote HPC use or specifics of our local cluster. As a prereq, students should ensure that they have a CAC account for Hopper setup and approved by the Hopper PI (Vivek Srikrishnan, BEE, vs498@cornell.edu). The two sessions might go as below (HPC1 and HPC2):
#### HPC1
- Intro to [Hopper Cluster hardware](https://www.cac.cornell.edu/wiki/index.php?title=Hopper_Cluster) and general overview of cluster computing, including advantages of including remote computing into daily workflow and potential speed enhancements (10-100X with Hopper).
  - As an aside, can discuss setup and use of [Cornell VPN](https://it.cornell.edu/cuvpn) to consolidate workflows
- Intro to using [Hopper Demand log](https://docs.google.com/spreadsheets/d/1WP6kUm3_G9lEADBo81xXcw8yPdmLu6J85PZb-V3xnl0/edit#gid=0) and the resources therein
  - Responsible use of Hopper including logging use, max node usage, and avoidance of login node computing
- Ensure all students can get on Hopper and access the resource
- Review some basic LINUX functionality in HPC that was covered in command line module; demo first with direct ssh through Mac terminal or similar (i.e. not with emulator functionality)
   - ls, mkdir, cd, etc.
   - Introduce scp (secure copy protocol) for transferring files (note: use vignette in 'Getting started with Hopper' in 'Hopper demand log' link above); ensure students can transfer at least 1 file to and from Hopper before moving on, ideally
   - Cover some Hopper specifics such as module availability, etc.
   ```
   $ module avail
   ```
- While in direct ssh mode, cover getting into and out of high level languages (Python and R; note $ denotes bash and > or >>> denote R or Python operations respectively)
  - For R:
  ```
  $ module load R
  $ R
  > {enter your R command here}
  ```
  You are now operating in R, you can return to bash with 'ctrl-z'
  - For Python
  ```
  $ python
  >>> {enter your Python command here}
  ```
  You are now operating in python, you can return to bash with 'ctrl-z'
- Demo the 'hard way' of creating a manual R script via VIM and then running with 'Rscript' command   
  Create an R script and enter into it via VIM
  ```
  $ touch testR.R
  $ vim testR.R
  ```
  In VIM, ```i``` puts you into insert mode, write a simple R script like:
  ```
  x = mean(runif(100))
  print(x)
  print('this is a really fun R script I just made!')
  ```
  Exit 'insert' mode via 'esc', write and close the file with ```:wq``` entry
  Now, run your code with the bash 'Rscript' command:
  ```
  $ Rscript testR.R
  ```
  It will print the calculated value and text output; demo simple bash script by writing an .sh file to run the R script:
  ```
  $ touch run_testR.sh
  $ vim run_testR.sh
  ```
  In VIM, input the following:
  ```
  Rscript testR.R
  ```
  Then, run the bash script with the ```sh``` command:
  ```
  $ sh run_testR.sh
  ```
  You should get the same output; demo for python too with 'testPy.py' script, create and enter via VIM:
  ```
  $ touch testPy.py
  $ vim testPy.py
  ```
  As above, enter some simple Python functions with a simple output
  ```
  x = sum([1,2,3,4])
  print('The sum of 1 to 4 is',x)
  ```
  Exit the py script and create a shell script to run the Python function:
  ```
  $ touch run_testPy.sh
  $ vim run_testPy.sh
  ```
  Enter the 'python3' command in the shell script that runs the .py script (just 'python' works, but better to specify the version)
  ```
  python3 testPy.py
  ```
  Execute the shell script via the 'sh' command as above:
  ```
  $ sh run_testPy.py
  ```


#### HPC2  
The second HPC lesson transitions from direct command line usage of Hopper to introduce an emulator interface and cover some of the important items that will enable students to really start putting jobs up on the resource. For lesson logistics, setting up the training with instructor VPN-ing into work PC with MobaXterm (or equivalent) is how the following module items are arranged. For students to follow along, it will be useful for them to have setup VPN and remote access to their work computer
- Demo MobaXterm basic arrangement via VPN setup and briefly cover key attributes (GUI folder structure, MobaTextEditor, ensuring text editor format 'UNIX')
  - Ensure demo of networked Hopper drive functionality on work PCs (see 'Getting started with Hopper' in 'Hopper demand log' for details)
- Demonstrate git operations in Hopper
  - Use public github repo [hpc1_training](https://github.com/zpb4/hpc1_training) and clone it to Hopper home directory
  - Will likely need to setup GitHub personal access tokens, follow steps from Anderson Lab [here](https://github.com/AndersonEnergyLab-Cornell/slurm_tutorial) or [here](https://edgoad.com/2021/02/using-personal-access-tokens-with-git-and-github.html)
- Once git and GitHub remote functionality is working, demonstrate some simple R and Python scripting with 'hpc1_training' scripts and introduce SLURM scheduling bash scripts from the 'hpc1_training' repo.
  - Package loading in R, building a Python virtual environment and installing needed modules (See CAC site on Hopper [here](https://www.cac.cornell.edu/wiki/index.php?title=Hopper_Cluster)).
  - Highlight error handling with SLURM scripts and potential troubleshooting alternatives   
NOTE: Here and elsewhere, ensure that everyone is reminded that doing extensive computations on login node is bad!!
Ideally, this second module should be a very application focused session to potentially work through automating routines in Hopper (i.e. R or Python scripts) that students may have already created. Consider asking students as a prerequisite to try to find something they'd like to automate in Hopper. Otherwise, the instructor can pull something from some group software or the prebuilt scripts in 'hpc2_training' {under construction}  
- Revisit anything from HPC1 that was not completed or lingering questions
- Introduce some simple parallelization techniques ('foreach' loops in R, embarrassingly parallel operations via bash script)
- Useful R parallelization GitHub [here](https://github.com/PrincetonUniversity/HPC_R_Workshop/tree/master)
- Useful R tips including parallelization [here](https://bookdown.org/rdpeng/rprogdatascience/)
- Work through automating student scripts or running some software off of a group GitHub repo

