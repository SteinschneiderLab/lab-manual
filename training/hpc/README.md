#### README  
This training module (HPC) is intended to introduce and familiarize new students with HPC operations on the local EWRS shared resource, the Hopper Cluster, as of the writing of this document. The basic idea is that this module will build on previous command line and git training modules as prerequisites and be split over a couple 1 hour sessions.  

The first session assumes no previous knowledge of remote HPC use or specifics of our local cluster. As a prereq, students should ensure that they have a CAC account for Hopper setup and approved by the Hopper PI (Vivek Srikrishnan, BEE, vs498@cornell.edu). The first session should target:  
- Intro to Hopper Cluster hardware and general overview of cluster computing
- Intro to using Hopper Demand log and the resources therein
- Ensure all students can get on Hopper and access the resource
- Review some basic LINUX functionality in HPC that was covered in command line module; demo first with direct ssh through Mac terminal or similar (i.e. not with emulator functionality)
   - ls, mkdir, cd, etc.
   - Introduce scp (secure copy protocol) for transferring files
   - Cover some Hopper specifics such as module availability, etc.
- While in direct ssh mode, cover getting into and out of high level languages (Python and R)
  - For R
    module load R
    R

