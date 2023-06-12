# Introduction to GitHub

## Getting Started

GitHub is an interface of Git, which allows you to easily version control and share your code. There are several ways to interact with GitHub, including through the [command line](../command_line/) and [GitHub Desktop](https://desktop.github.com). The steps below outline how to get Git and GitHub setup on your machine.

1. **Install [Git](https://git-scm.com)**

   Some operating systems come pre-installed with git. From the terminal, run `git --version` from the command line to determine if git is already installed on your machine. If git is not available, you'll need to install Git. Installation will vary by operating system.

      <details>
      <summary> macOS & Linux </summary>

   [Homebrew](https://brew.sh) is a very helpful package manager. You can install Homebrew by running the following command from the terminal:

   ```
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```

   Once Homebrew is installed, you can easily install many other [packages](https://formulae.brew.sh/formula/). Run the following command from the terminal to install Git:

   ```
   brew install git
   ```

      </details>

   <br>

   <details>
   <summary> Windows </summary>

   There are several ways to install Git for Windows. See the Git [documentation](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) for more details.

   </details>

1. **Make a [GitHub](https://www.github.com) Account**

   You are eligible for free GitHub Pro as a student. After you create an account, go to [GitHub Education](https://education.github.com/students) and click **Join Global Campus** to add these benefits to your account.

1. **Create and Add SSH Key**

   You will be accessing files from various networks. The most safe and secure way to do so is through a network protocol, called secure shell (SSH). To use this protocol to access files from GitHub, you will need to follow a few steps to setup a SSH key.

   Generate a new SSH key following the steps [here](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#generating-a-new-ssh-key). Make sure to follow the steps specific to your operating system. Add the newly generated SSH key to your GitHub following the steps [here](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account).

1. **Download [GitHub Desktop](https://desktop.github.com) (optional)**

   You can interact with GitHub through the command line or through a UI, like [GitHub Desktop](https://desktop.github.com).

<br>

## Using GitHub

Let's start by copying the Lab's manual onto your local machine. This is called **cloning a repository**.

https://github.com/SteinschneiderLab/lab-manual/assets/43445526/b20b27af-7f32-4e10-92eb-5200dd56b3c2

1. Open the command line

1. Change directories to the folder where you want to house GitHub repositories

   **Box Drive/Sync Users:** Do not put a GitHub repository into a folder managed by Box Drive or Box Sync. The version control of Box can sometimes interfere with GitHub's version control.

1. Access the [lab manual](https://github.com/SteinschneiderLab/lab-manual/) on GitHub and copy the repo's SSH key

1. From terminal, use the coppied SSH key to clone into the repository on your local machine

   ```shell
   git clone git@github.com:<SomeUser/SomeRepo>.git
   ```

1. Open the folder in your file manager to view the repository's files on your local machine

   ```shell
   open .
   ```

<br>

Now let's create a new file and push it back to GitHub.

https://github.com/SteinschneiderLab/lab-manual/assets/43445526/4e20bde0-edaa-4701-b6a3-84f92b7fa5a5

1. Change directories into the Git training folder

   ```shell
   cd lab-manual/training/git/testFiles
   ```

1. Create a blank text file and name it your last name. Then add your first name to the contents of the file. You can do this through your file manager or by running the following in terminal

   ```shell
   touch <YourLastName>.txt
   vim <YourLastName>.txt
   ```

   One you are in vim, press `i` key to enable typing mode (you should see `[INSERT]` appear at the bottom of terminal). Type your first name. Press the `Escape` key. Then type `:wq` to write to the file and quit vim.

1. Back out to the lab-manual directory

   ```shell
   cd ../../../
   ```

1. Check the status of the repository on your local machine. You should see the text file name in red.

   ```shell
   git status
   ```

1. Add the file to be sent back to GitHub

   ```shell
   git add training/git/testFiles/<YourLastName>.txt
   ```

1. Check the status of the repository on your local machine. You should now see the file name in green. This means it will be included with your push to GitHub. You can `git add` multiple files before continuing to the next step.

   ```shell
   git status
   ```

1. Stage the files to be pushed to GitHub. Run the `git commit` command and add a message to describe what you are pushing back to GitHub.

   ```shell
   git commit -m 'added <YourLastName>.txt from tutorial'
   ```

1. Now we are ready to push the files back to GitHub

   ```shell
   git push
   ```

1. Go to the [lab manual](https://github.com/SteinschneiderLab/lab-manual/) and view your latest push.

But everyone created a new file, so we need to update the repositories our local machines to reflect the changes.

1. Fetch and merge the repository

   ```shell
   git fetch
   git merge
   ```

You should now be able to see everyone else's files. There is a command that combines `git fetch` and `git merge` called `git pull`. It is best practice, especially in repos that many people are contributing to, to run `git fetch` and `git merge` instead in case there are conflicts that require your attention.

<br>

## Next Steps: Exploring GitHub

There are many more features of GitHub not included in this tutorial. Some quick resources and references are listed below:

- When you have code that you would like to share on GitHub, you can create a new repository following the tutorial [here](https://docs.github.com/en/get-started/quickstart/create-a-repo?tool=webui).

- When you create a repository, you can also add a license to specify how your code can be used. Here is [resources](https://choosealicense.com) to help you quickly and easily choose a license based on your preference (the MIT and Apache 2.0 are good places the start).

- There might be instances when you need to use GitHub to version control and revert your repository to a previous commit. More steps on managing commits can be found [here](https://www.freecodecamp.org/news/git-reverting-to-previous-commit-how-to-revert-to-last-commit/).
