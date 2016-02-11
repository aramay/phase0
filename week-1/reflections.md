<h1>1.1 Think About Time</h1>
<h1>1.2 The Command Line</h1>
<h1>version control</h1>
Write an explanation of and compare Git and GitHub to one another.
Git is a widely used “source code management system” for software development. It is the management of changes to documents, computer programs, large web sites, and other collections of information. Git is like an App that runs locally on user's machine. 
Git
Repository
A repository is a special directory which has all the features of version control system.
you can create a local repository by
create a directory
type command - git init
or you can clone an existing repository by
git clone /path/to/directory 
on a remote machine - git clone username@host:/path/to/directory 

Workflow
you local directory consist of three trees:
working directory - which has all the actual files
you add files which have been changed - git add *
actual commit would save those files in local repository - git commit “message”

Push Changes
To send these changes to remote repository, type command
git push origin master
GitHub
GitHub is web based repository hosting service. A web based model allows multiple users to work on same project. This way all the changes are synced and developers across the globe can keep up with progress. This can be accomplished as follows.

Update and Merge
Developer 1 can get the latest repository by pull request.
git pull
After making changes to his files, developer 1 can push changes, so repository is synced.
git push origin master
developer 2 and developer 3 can sync their local repositories by doing git pull (it will merge latest changes)

Explain what version control is and how GitHub helps with it.
Version Control is a widely used “source code management system” for software development. It is the management of changes to documents, computer programs, large web sites, and other collections of information.
GitHub is a repository hosting service. It’s flagship feature is “forking”. Forking is copying a repository from one user’s account to another. This enables you to take a project that you don’t have write access to and modify it under your own account. If you make changes you’d like to share, you can send a notification called a “pull request” to the original owner. That user can then, with a click of a button, merge the changes found in your repo with the original repo.


Why do developers use version control (Git)?
Developer use it achieve following goals
maintain different version of software
revert changes 
easy backup
more than one developer can work on prokject

What is a commit?
In version control system, a commit adds latest changes to software repository. This way wheen other user do any update or checkout  a project, they will receive a latest version, unless they specify they wish to retrieve a previous version of the source code in the repository.
<h1>new heading</h1>
