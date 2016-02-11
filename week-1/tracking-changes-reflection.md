Using your command line, create a new file called tracking-changes-reflection.md in the week-1 directory.
Open the file in sublime. Copy the following questions in it and answer them.


1. How does tracking and adding changes make developers' lives easier?

	* Developer use it achieve following goals
	* maintain different version of software
	* revert changes 
	* easy backup
	* more than one developer can work on project

2. What is a commit?
	* In version control system, a commit adds latest changes to software repository. This way when other user do any update or checkout  a project, they will receive a latest version, unless they specify they wish to retrieve a previous version of the source code in the repository.

3. What are the best practices for commit messages?
	* A project's long-term success rests (among other things) on its maintainability, and a maintainer has few tools more powerful than his project's log.
	Sometimes a single line is fine, especially when the change is so simple that no further context is necessary.
	e.g “fixed typo”

	* when a commit merits a bit of explanation and context, you need to write a body with Subject. e.g:
	Fixed bug#23
	Expired user were is able to create certificate. As per business requirements, this is not allowed.
	What does the HEAD^ argument mean?
	HEAD is a reference to the last commit in the current checked out branch.
	>HEAD~3, HEAD~4, HEAD~5, are the 3rd 4th and 5th commit from HEAD respectively.


4. three stages are
	* `git add <filename>`
	* `git commit -m "message"`
	* `git push origin <branch-name>`

5. Write a handy cheatsheet of the commands you need to commit your changes.
	* As a good practice, you should create a branch for your changes
	* type git checkout -b <feature-x>
	* create a file and add changes.
	* save file and exit
	* on command line type `git status`
>aaron@aaron-Box:~/Documents/phase0-local/phase0/week-1$ git status
>On branch feature-x
>Changes not staged for commit:
>(use "git add <file>..." to update what will be committed)
>(use "git checkout -- <file>..." to discard changes in working directory)
>modified:   tracking-changes-reflection.md	

type git add <filename> and check status with git status
On branch feature-x
Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

	modified:   tracking-changes-reflection.md

To commit your changes, that mean saving your changes. Type git commit -m “updated file with new content”
check status to be sure : 
On branch feature-x
nothing to commit, working directory clean

In last step, you want to push your changes to remote repository. This way we can merge our change to master branch.
aaron@aaron-Box:~/Documents/phase0-local/phase0/week-1$ git push origin feature-x 
Username for 'https://github.com': kasper341
Password for 'https://kasper341@github.com': 
Counting objects: 7, done.
Compressing objects: 100% (4/4), done.
Writing objects: 100% (4/4), 1.50 KiB | 0 bytes/s, done.
Total 4 (delta 1), reused 0 (delta 0)
To https://github.com/kasper341/phase0.git
 * [new branch]      feature-x -> feature-x

Go to your gitHub account, you will see a message like “Your recently pushed branches:” Here you can merge your change with master branch.

What is a pull request and how do you create and merge one?
Pull requests let you tell others about changes you've pushed to a GitHub repository. Once a pull request is sent, interested parties can review the set of changes, discuss potential modifications, and even push follow-up commits if necessary.
To create a pull request, type git push origin <branch-name>
go to your GitHub account and click “compare and pull request”
Next window will open your commit history. Click “create pull request”
Finally “ Merge Pull Request”

Why are pull requests preferred when working with teams?
Go through the git workflow you just established and add your reflection to the file. (If you are creating a video reflection, add the video link to your reflection file.)
Add your changes, commit them, and make a pull request to your repository.
Merge the pull request into your master branch
Submit the link to your reflection file. It should be located at:
https://github.com/[YOUR-USERNAME]/phase-0/blob/master/week-1/tracking-changes-reflection.md


What is a pull request and how do you create and merge one?
Why are pull requests preferred when working with teams?
Go through the git workflow you just established and add your reflection to the file. (If you are creating a video reflection, add the video link to your reflection file.)
Add your changes, commit them, and make a pull request to your repository.
Merge the pull request into your master branch
Submit the link to your reflection file. It should be located at:
https://github.com/[YOUR-USERNAME]/phase-0/blob/master/week-1/tracking-changes-reflection.md

