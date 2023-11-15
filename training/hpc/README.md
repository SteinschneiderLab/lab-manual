#### README  
This training module (HPC) is intended to introduce and familiarize new students with HPC operations on the local EWRS shared resource, the Hopper Cluster, as of the writing of this document. The basic idea is that this module will build on previous command line and git training modules as prerequisites and be split over a couple 1 hour sessions.  

The first session assumes no previous knowledge of remote HPC use or specifics of our local cluster. As a prereq, students should ensure that they have a CAC account for Hopper setup and approved by the Hopper PI (Vivek Srikrishnan, BEE, vs498@cornell.edu). The first session should target:  
- Intro to [Hopper Cluster hardware](https://www.cac.cornell.edu/wiki/index.php?title=Hopper_Cluster) and general overview of cluster computing
- Intro to using [Hopper Demand log](https://docs.google.com/spreadsheets/d/1WP6kUm3_G9lEADBo81xXcw8yPdmLu6J85PZb-V3xnl0/edit#gid=0) and the resources therein
  - Responsible use of Hopper including logging use, max node usage, and avoidance of login node computing
- Ensure all students can get on Hopper and access the resource
- Review some basic LINUX functionality in HPC that was covered in command line module; demo first with direct ssh through Mac terminal or similar (i.e. not with emulator functionality)
   - ls, mkdir, cd, etc.
   - Introduce scp (secure copy protocol) for transferring files
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
  create an R script and enter into it via VIM
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
  It will print the calculated value and text output; can demo something similar for Python as needed
- After some demos of the direct command line functionality, can transition to MobaXterm or equivalent to demo emulator operations
- Demonstrate git operations in Hopper
  - Use public github repo [hpc1_training](
  

   ```shell
   touch <YourLastName>.txt
   vim <YourLastName>.txt
   ```

