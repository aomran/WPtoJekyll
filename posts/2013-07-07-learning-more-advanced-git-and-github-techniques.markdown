---
layout: post
title:  Learning More Advanced Git and Github Techniques
date:   2013-07-07 21:59:43
categories: git git-2 github github-2 hackeryou hackeryou-2 hub linux ssh web-development
---
The first time I used git (almost a year ago), I have to admit that it was bewildering but I have come a long way since. For a while I have been confined to a few commands (git add, git commit, and git push) but we used git so much this past week at HackerYou that I felt comfortable enough to finally learn some more advanced techniques. Having many classmates to work with and so many repos to play with has really accelerated my learning.

Here I want to share some Git and Github tips/tricks that I learned during the first week of HackerYou's Summer Academy. We are doing all of our work inside a virtual machine (running Ubuntu 12.04), so everything here assumes a Linux operating system.
## Navigating and Troubleshooting Git
Here are a few commands that I think are very useful for navigating a git repository and troubleshooting common problems.
* $ git status : Pretty much my go to command whenever I want to check the state of the repo. It tells me what files are staged, what files are modified but not staged and lets me know if there are new or deleted files that are not tracked by git. I attempt to use this command as much as possible, especially before committing changes.
* $ git log : Outputs the entire commit history and is very useful for seeing the work that has been done so far. I find that this is a good way to get the SHA-1 hash that can be used to reference a specific commit.
* $ git checkout : This is a very versatile command which allows you to pretty much go anywhere. You can use it to switch to a branch, tag, commit or file. Use $ git log  to find the SHA-1 hash reference number for a specific commit and then $ git checkout &lt;commit&gt;  to see how your repo looked on that commit. You can grab an old version of a file with $ git checkout &lt;commit&gt; &lt;file&gt; .
* $ git remote -v : This command will show you a verbose list of the remote repositories (with names and URLs). Knowing the name is important because we need it for the push/fetch commands and the URL can help us resolve connectivity issues.
* $ git remote rm &lt;remote&gt; : If we add the wrong remote then it's no big deal, we can remove a remote by passing its name to this command.
* $ git branch -v : This shows us a list of the branches that we have and a star (*****) lets us know what branch we are on. Use $ git branch -d &lt;branch&gt;  to delete a branch.
* $ git branch -rv  : This shows us a list of the **remote** branches, which can come in handy if you want to [checkout a pull requests locally](https://help.github.com/articles/checking-out-pull-requests-locally "Checking out Pull Requests locally").

## Hub Command Line Tool
Leaving the command line to create a Github repository in the browser (and then adding it as a remote) can get tedious. [Hub](https://github.com/defunkt/hub "Hub command line tool") is a command line tool that uses Github's API to allow you to do a lot of cool things from the command line.
### 1. Installing Hub
The instructions on Hub's Github repo won't work for the VM for two reasons: 1. ~/bin/ doesn't exist and 2. we need to use 'sudo' to have the proper permissions to execute the commands. So here are the modified commands.
 $ sudo curl http://defunkt.io/hub/standalone -sLo /bin/hub
$ sudo chmod +x /bin/hub 
After installing Hub, check that it was installed: $ hub version .
### 2. Creating a Github Repo from the Command Line
From the command line, navigate to a git repository and create a Github repo with:$ hub create  -d "Description of repo" . This will create a Github repo with the same name as the git repo and add the description. The Github repo will automagically be added as a remote called "origin". Push your code $ git push -u origin master  and everything is done!
## Connecting to Github with SSH
Github allows you to connect via HTTPS or SSH. With the HTTPS URLs you will be prompted for a password. With SSH you just need an SSH keypair stored on your VM. I personally prefer to use SSH. Getting the VM ready for SSH is simple:
1. $ ls ~/.ssh  to see if you have an SSH keypair (usually named id_rsa and id_rsa.pub). The one with the '.pub' extension is the public key (the one you share with Github).
2. If there are no ssh keys then $ ssh-keygen  to make a pair. If you added a passphrase for the key (optional but recommended) then run $ ssh-agent bash  and $ ssh-key add  so that you don't need to re-enter it every time.
3. $ cat ~/.ssh/id_rsa.pub  and copy the output. Then go to the account settings on Github and click "SSH Keys". Add the key there and remember to give it a memorable name.
4. Check that you are indeed able to connect via SSH with: $ ssh -T git@github.com

If the above isn't set up properly then you will see the following error when trying to pull or push to Github with SSH URLs:
 permission denied (publickey)
fatal: The remote end hung up unexpectedly 
Resource: [Generating SSH Keys](https://help.github.com/articles/generating-ssh-keys#platform-linux "")
## Github Help is Helpful!
The [documentation](https://help.github.com/ "") at Github is superb. Here are a few gems that I found:
* [Syncing a fork](https://help.github.com/articles/syncing-a-fork "")
* [Creating a pull request](https://help.github.com/articles/creating-a-pull-request "")
* [Checking out Pull Requests locally](https://help.github.com/articles/checking-out-pull-requests-locally "")
* [Resolving a merge conflict from the command line](https://help.github.com/articles/resolving-a-merge-conflict-from-the-command-line "")

## Resources for Learning Git
* [Atlassian Git Tutorials](http://www.atlassian.com/git "") (excellent explanations)
* [Git Pocket Guide](http://chimera.labs.oreilly.com/books/1230000000561/index.html "") (free ebook)
* [Videos from Github Training](http://training.github.com/resources/videos/ "")
* [Code School's Git Real Course](http://www.codeschool.com/courses/git-real "")