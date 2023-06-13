#### These resources were provided by Rohini at kickoff Steinschneider group meeting. They should be integrated through other resources where they are directly applicable, but wanted to make sure they didn't get lost in the meantime:  
  
Here are some group resources that we talked about (as well as some others that just came to mind). 

* The Reed Group Manual (so far): https://reedgroup.github.io/intro.html
* Git tutorial: https://github.com/reedgroup/GitTutorial
* Resource on Scaling: Scaling experiments: how to measure the performance of parallel code on HPC systems – Water Programming: A Collaborative Research Blog (wordpress.com)
Most of our scaling tests are done primarily with Borg, but hopefully the spirit of how you do a scaling test (and the types of figures you can use to visualization speedup) is captured in the two HPC powerpoints here: https://cornell.app.box.com/folder/205937498605?s=925361psh2sgkz6bav3hynmjv2k54rhv
* NetCDF Operators: https://waterprogramming.wordpress.com/2021/05/17/netcdf-operators/
* I had featured Liz in a blog post based on this cool paper that she had presented at a conference last year. Basically, creating standards for reproducible large-scale ML models. Includes suggestions for a repo structure. Also has examples from her class which I thought were pretty cool. The goal is to have a completely populated repo by the time you are ready to submit a paper. As I state in the blog post, I feel like this is one of the most useful papers I could have read as an incoming grad student. https://waterprogramming.wordpress.com/2023/03/06/introducing-the-grrien-analysis-framework-defining-standards-for-reproducible-and-robust-supervised-learning-of-earth-surface-processes-at-large-spatial-scales/
* Another example of reproducible repo templates: https://waterprogramming.wordpress.com/2020/05/26/a-template-for-reproducible-papers/
* Here are some resources that we have in our group Box that might be useful: Data Visualization, Python Cheat Sheets, Stampede 2. Stampede 2 was kind've the standard HPC resource that we went for, but it is going to be retired in October, and the new suggested resource that is similar is called Anvil. However, the resources on node types, vectorization, parallel architectures should still be a useful starting place. 
* Discover ACCESS proposal is [here](). This is the second tier of request and is applicable to NSF-GRFP winners. You get 1,500,000 ACCESS Credits (750,000 immediately and the second half after you prove that you have made progress) which equates to a hefty amount of service units on different machines. Not enough for a large optimization but definitely a pretty large simulation experiment. Turn around time is almost immediate, so I would highly recommend applying for even the most basic one if you (1) think that Hopper can't support you (2) if you want to run scaling tests for existing models (like Kyla's for example) so that you have specs that you can reference for future allocation proposals, as I do in the ACCESS proposal. Over time, I've realized that #2 is pretty essential to have when you write proposals for larger allocations and need to prove that your models are scalable enough to make us of the resources. 
* Service Units: Running on different machines and different types of nodes (high priority, gpu) will incur different charges. If you go to Table 5 as an example for the Frontera resource, you can see how many service units are required for a single node-hour on different nodes. So if you use one node for one hour, this is what you will be charged. If you have specs on how long your model takes to run and how many nodes you think you will use, you can then try to scale up to see how many SUs are needed for your job. Not an exact science, but a good starting point for figuring out how much you'll get out of your ACCESS proposal: https://frontera-portal.tacc.utexas.edu/user-guide/running/